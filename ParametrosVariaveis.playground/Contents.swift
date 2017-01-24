//: Playground - noun: a place where people can play

import UIKit

func sum(withArray numbers: [Int]) -> Int {
    var sum: Int = 0;
    
    for number in numbers {
        sum += number;
    }
    
    return sum;
}

let numbers = [0, 1, 2, 3, 4, 5];

sum(withArray: numbers);

func sum(withParams numbers: Int ...) -> Int {
    var sum: Int = 0;
    
    for number in numbers {
        sum += number;
    }
    
    return sum;
}

sum(withParams: 1, 2, 3, 4, 5);

// ERRO
//sum(withParams: numbers);