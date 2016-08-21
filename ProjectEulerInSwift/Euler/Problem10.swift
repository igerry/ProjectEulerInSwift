import Foundation

/*
 Summation of primes
 Problem 10
 142913828922
 
 The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
 
 Find the sum of all the primes below two million.
 */
class Problem10 {

    func solution() -> Int {
        var sum:Int = 0
        let primes:NSMutableArray = []
        var nextPrime = 0
        
        while nextPrime < 2000000 {
            sum += nextPrime
            
            nextPrime = Common.getNextPrime(primes)
            print("\(nextPrime)")
        }
        
        return sum
    }

}
