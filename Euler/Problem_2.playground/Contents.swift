//: Playground - noun: a place where people can play

import Foundation

let projectEuler = "projecteuler.net"

/*
 Even Fibonacci numbers
 Problem 2
 4613732
 
 Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
 
 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
 
 By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
 
 */
func problem2() -> Int {
    var i:Int = 1
    var j:Int = 1
    var sum:Int = 0
    while j <= 4000000 {
        if j % 2 == 0 {
            sum += j
        }
        
        (i, j) = (j, i + j)
    }
    
    return sum
}
let p2 = problem2()
