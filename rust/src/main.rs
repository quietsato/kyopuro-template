#[rustfmt::skip]
#[allow(unused_imports)]
use {
    itertools::*,
    whiteread::*,
    std::*,
    std::collections::*
};

#[allow(dead_code)]
mod util {}

#[cfg(test)]
mod test {}

#[allow(unused_imports)]
fn main() {
    use util::*;

    let a: i64 = parse_line().unwrap();
    let (b, c): (i64, i64) = parse_line().unwrap();
    let s: String = parse_line().unwrap();

    println!("{} {}", a + b + c, s);
}
