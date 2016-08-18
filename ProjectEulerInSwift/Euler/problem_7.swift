import Foundation

/*
 10001st prime
 Problem 7
 104743
 
 By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
 
 What is the 10 001st prime number?
 */
func problem7() -> Int {
    let primes:NSMutableArray = []
    var nextPrime = 2
    for _ in 1...10001 {
        nextPrime = getNextPrime(primes)
    }
    
    return nextPrime
}
let p7 = problem7()
