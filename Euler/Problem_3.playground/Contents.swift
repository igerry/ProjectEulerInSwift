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
func problem3() -> Int {
    var n:Int = 600851475143
    let primes:NSMutableArray = [2, 3]
    
    var maxPrime:Int = 0
    var prime:Int = 3
    while n > 1 {
        for i in primes {
            if n % (i as! Int) == 0 {
                if (i as! Int) > maxPrime {
                    maxPrime = (i as! Int)
                }
                n /= (i as! Int)
            }
        }
        
        var findNewPrime:Bool = true
        for i in primes {
            if (prime + 2) % (i as! Int) == 0 {
                findNewPrime = false
                break
            }
        }
        if findNewPrime {
            primes.addObject(prime + 2)
        }
        
        prime = prime + 2
        
        print("\((maxPrime, n))")
    }
    
    return maxPrime
}
let p3 = problem3()
