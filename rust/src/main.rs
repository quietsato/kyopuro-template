#[allow(unused_imports)]
use {
    proconio::input,
    std::collections::*
};

#[allow(dead_code)]
mod util {
}

#[cfg(test)]
mod test {}

#[allow(unused_imports)]
fn main() {
    use util::*;

    input! {
        a: i64,
        (b, c): (i64, i64),
        s: String
    };

    println!("{} {}", a + b + c, s);
}
