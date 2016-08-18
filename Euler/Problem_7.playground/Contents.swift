//: Playground - noun: a place where people can play

import Foundation

let projectEuler = "projecteuler.net"

/*
 10001st prime
 Problem 7
 104743
 
 By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
 
 What is the 10 001st prime number?
 */

func getNextPrime(primes: NSMutableArray) -> Int {
    if primes.count == 0 {
        primes.addObject(2)
        return 2;
    }
    
    if primes.count == 1 {
        primes.addObject(3)
        return 3;
    }
    
    var findNewPrime = false
    var nextPrime = primes.lastObject as! Int + 2
    while !findNewPrime {
        findNewPrime = true
        for i in primes {
            if nextPrime % (i as! Int) == 0 {
                findNewPrime = false
                break
            }
        }
        if (findNewPrime) {
            primes.addObject(nextPrime)
            break
        }
        
        nextPrime = nextPrime + 2
    }
    
    return nextPrime
}


func problem7() -> Int {
    let primes:NSMutableArray = []
    var nextPrime = 2
    for _ in 1...10001 {
        nextPrime = getNextPrime(primes)
    }

    return nextPrime
}
let p7 = problem7()
