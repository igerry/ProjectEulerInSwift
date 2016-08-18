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
    var sum = 0
    for i in 1...998 {
        for j in 1...(999-i) {
            let k = 1000 - i - j
            if (i*i + j*j == k*k) || (i*i + k*k == j*j) || (k*k + j*j == i*i) {
                sum = i * j * k
            }
        }
    }
    return sum
}
let p9 = problem9()
