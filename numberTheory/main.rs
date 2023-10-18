fn gcd(mut num1: i32,mut num2: i32) -> i32{
    loop {
        if num1<num2 {
            let temp;
            temp = num1;
            num1 = num2;
            num2 = temp;
        }

        // println!("{}{}", num1,num2);
        let rem = num1%num2;
        if rem == 0 {
            return num2;
        }else{
            num1 = num2;
            num2 = rem;
        }
    }
}

fn main() {
    let value = gcd(70,15);
    println!("{}", value);
}