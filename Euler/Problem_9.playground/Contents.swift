//: Playground - noun: a place where people can play

import Foundation

let projectEuler = "projecteuler.net"

/*
 Special Pythagorean triplet
 Problem 9
 31875000
 
 A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
 
 a^2 + b^2 = c^2
 For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
 
 There exists exactly one Pythagorean triplet for which a + b + c = 1000.
 Find the product abc.
 */
func problem9() -> Int {
    let max:Int = 1000
    var sum = 0
    for i in 1...(max / 3) {
        for j in 1...(max - 1 - i) / 2 {
            let k = max - i - j
            if (i*i + j*j == k*k) {
                sum = i * j * k
            }
        }
    }
    return sum
}
let p9 = problem9()
