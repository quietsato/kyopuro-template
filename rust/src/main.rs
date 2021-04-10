use itertools;
use whiteread::parse_line;

fn main() {
    let a: i64 = parse_line().unwrap();
    let (b, c): (i64, i64) = parse_line().unwrap();
    let s: String = parse_line().unwrap();

    println!("{} {}", a + b + c, s);
}
