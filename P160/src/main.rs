extern crate ramp;

use ramp::Int;


fn main() {
    println!("5!: {}", factorial(5));
    println!("10!: {}", factorial(10));
    println!("20!: {}", factorial(20));
    println!("100!: {}", factorial(100));
    println!("1000!: {}", factorial(1000));
    println!("20000!: {}", factorial(20000));
    
}

/// Calculates n!
fn factorial(n: usize) -> Int {
    let mut a = Int::from(1);
    if n ==0 || n == 1 {
        return a;
    }
    for i in 2..n {
        a = a * i;
    }

    return a*n;
}
