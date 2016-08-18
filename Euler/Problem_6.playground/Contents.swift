//: Playground - noun: a place where people can play

import Foundation

let projectEuler = "projecteuler.net"

/*
 Sum square difference
 Problem 6
 25164150
 
 The sum of the squares of the first ten natural numbers is,
 
 1^2 + 2^2 + ... + 10^2 = 385
 The square of the sum of the first ten natural numbers is,
 
 (1 + 2 + ... + 10)^2 = 55^2 = 3025
 Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
 
 Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
 
 */
func problem6() -> Int {
    var sum = 0
    var sumSquare = 0
    for i in 1...100 {
        sum += i
        sumSquare += i * i
    }
    
    let diff = sum * sum - sumSquare
    return diff
}
let p6 = problem6()
