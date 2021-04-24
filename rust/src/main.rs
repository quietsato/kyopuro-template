use itertools::Itertools;
use whiteread::parse_line;

fn main() -> Result<(), Box<dyn std::error::Error>> {
    let a: i64 = parse_line()?;
    let (b, c): (i64, i64) = parse_line()?;
    let s: String = parse_line()?;

    println!("{} {}", a + b + c, s);

    Ok(())
}
