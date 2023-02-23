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
    combinator::recognize,
    error::VerboseError,
    multi::many0_count,
    sequence::{delimited, pair, Tuple},
    IResult,
};

pub type Res<T, U> = IResult<T, U, VerboseError<T>>;

pub fn stmt(input: &str) -> Res<&str, &str> {
    alt((matched, unmatched))(input)
}

fn ext_matched(input: &str) -> Res<&str, &str> {
    let (input, (_, expr, _, _, _, rest)) =
        (token_if, expr, token_then, matched, token_else, matched).parse(input)?;
    println!("ext matched: {expr}");
    Ok((input, rest))
}

fn matched(input: &str) -> Res<&str, &str> {
    alt((ext_matched, stmt_final))(input)
}

fn unmatched(input: &str) -> Res<&str, &str> {
    alt((ext_unmatched_simple, ext_unmatched_recursion))(input)
}

fn ext_unmatched_simple(input: &str) -> Res<&str, &str> {
    let (input, (_, expr, _, rest)) = (token_if, expr, token_then, matched).parse(input)?;
    println!("ext unmatched (simple): {expr}");
    Ok((input, rest))
}

fn ext_unmatched_recursion(input: &str) -> Res<&str, &str> {
    let (input, (_, _, _, _, _, rest)) =
        (token_if, expr, token_then, matched, token_else, unmatched).parse(input)?;
    Ok((input, rest))
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
    let (input, stmt) = delimited(
        multispace0,
        recognize(pair(
            tag("stmt"),
            many0_count(alt((alphanumeric1, tag("_")))),
        )),
        multispace0,
    )(input)?;
    println!("stmt: {stmt}");
    Ok((input, stmt))
}
