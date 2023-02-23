mod parser;

fn main() {
    let _ = parser::stmt("if expr1 then if expr2 then stmt1 else stmt2 else stmt3").unwrap();
}
