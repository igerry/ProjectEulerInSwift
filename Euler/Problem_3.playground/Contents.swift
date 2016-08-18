//: Playground - noun: a place where people can play

import Foundation

let projectEuler = "projecteuler.net"

/*
 Largest prime factor
 Problem 3
 6857
 
 The prime factors of 13195 are 5, 7, 13 and 29.
 
 What is the largest prime factor of the number 600851475143 
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

func problem3() -> Int {
    var n:Int = 600851475143
    let primes:NSMutableArray = []
    
    var maxPrime:Int = 0
    while n > 1 {
        let nextPrime = getNextPrime(primes)
        
        while n % nextPrime == 0 {
            if nextPrime > maxPrime {
                maxPrime  = nextPrime
            }
            n /= nextPrime
        }
        
        print("\((maxPrime, n))")
    }
    
    return maxPrime
}
let p3 = problem3()
