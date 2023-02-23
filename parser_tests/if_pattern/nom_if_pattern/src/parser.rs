//! I want to parse the following grammar with nom
//!
//! stmt : matched | unmatched ;
//!
//! matched : IF EXPR THEN matched ELSE matched
//!         | STMT ;
//! unmatched : IF EXPR THEN matched
//!           | IF EXPR THEN matched ELSE unmatched ;

use nom::{
    self,
    branch::alt,
    bytes::complete::tag,
    character::complete::{alphanumeric1, multispace0},
    combinator::{eof, recognize},
    error::VerboseError,
    multi::many0_count,
    sequence::{delimited, pair, Tuple},
    IResult,
};

pub type Res<T, U> = IResult<T, U, VerboseError<T>>;

pub fn stmt(input: &str) -> Res<&str, &str> {
    // Peu importe l'ordre ici
    alt((bounded_stmt_unmatched, bounded_stmt_matched))(input)
}

pub fn bounded_stmt_unmatched(input: &str) -> Res<&str, &str> {
    match (unmatched, eof).parse(input) {
        Ok((input, (_, rest))) => {
            println!("bounded stmt unmatched done");
            Ok((input, rest))
        }
        Err(err) => {
            println!("error bounded stmt unmatched");
            Err(err)
        }
    }
}

pub fn bounded_stmt_matched(input: &str) -> Res<&str, &str> {
    match (matched, eof).parse(input) {
        Ok((input, (_, rest))) => {
            println!("bounded stmt matched done");
            Ok((input, rest))
        }
        Err(err) => {
            println!("error bounded stmt matched");
            Err(err)
        }
    }
}

fn ext_matched(input: &str) -> Res<&str, &str> {
    let (input, _) = token_if(input)?;
    let (input, (_expr, _, _, _, rest)) =
        match (expr, token_then, matched, token_else, matched).parse(input) {
            Ok(res) => res,
            Err(err) => {
                println!("error ext matched");
                return Err(err);
            }
        };
    println!("ext matched done");
    Ok((input, rest))
}

fn matched(input: &str) -> Res<&str, &str> {
    alt((ext_matched, stmt_final))(input)
}

fn unmatched(input: &str) -> Res<&str, &str> {
    alt((ext_unmatched_simple, ext_unmatched_recursion))(input)
}

fn ext_unmatched_simple(input: &str) -> Res<&str, &str> {
    match (token_if, expr, token_then, matched).parse(input) {
        Ok((input, (_, _expr, _, rest))) => {
            println!("ext unmatched (simple) done");
            Ok((input, rest))
        }
        Err(err) => {
            println!("error ext unmatched (simple)");
            Err(err)
        }
    }
}

fn ext_unmatched_recursion(input: &str) -> Res<&str, &str> {
    match (token_if, expr, token_then, matched, token_else, unmatched).parse(input) {
        Ok((input, (_, _, _, _, _, rest))) => {
            println!("ext unmatched (recursion) done");
            Ok((input, rest))
        }
        Err(err) => {
            println!("error ext_unmatched (recursion)");
            Err(err)
        }
    }
}

fn token_then(input: &str) -> Res<&str, &str> {
    delimited(multispace0, tag("then"), multispace0)(input)
}

fn token_else(input: &str) -> Res<&str, &str> {
    delimited(multispace0, tag("else"), multispace0)(input)
}

fn token_if(input: &str) -> Res<&str, &str> {
    delimited(multispace0, tag("if"), multispace0)(input)
}

fn expr(input: &str) -> Res<&str, &str> {
    delimited(
        multispace0,
        recognize(pair(
            tag("expr"),
            many0_count(alt((alphanumeric1, tag("_")))),
        )),
        multispace0,
    )(input)
}

fn stmt_final(input: &str) -> Res<&str, &str> {
    delimited(
        multispace0,
        recognize(pair(
            tag("stmt"),
            many0_count(alt((alphanumeric1, tag("_")))),
        )),
        multispace0,
    )(input)
}
