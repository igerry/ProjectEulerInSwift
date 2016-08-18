//: Playground - noun: a place where people can play

import Foundation

let projectEuler = "projecteuler.net"

/*
 Summation of primes
 Problem 10
 142913828922
 
 The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
 
 Find the sum of all the primes below two million.
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

func problem10() -> Int {
    var sum:Int = 0
    let primes:NSMutableArray = []
    var nextPrime = 0
    
    while nextPrime < 2000000 {
        nextPrime = getNextPrime(primes)
        sum += nextPrime
        
        print("\(nextPrime)")
    }

    return sum
}
let p10 = problem10()
