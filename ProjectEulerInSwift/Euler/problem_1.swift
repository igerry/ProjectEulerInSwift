import Foundation

/*
 Multiples of 3 and 5
 Problem 1
 233168
 
 If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
 
 Find the sum of all the multiples of 3 or 5 below 1000.
 
 */
func problem1() -> Int {
    var sum = 0
    for i in 0..<1000 {
        if (i % 3 == 0) || (i % 5 == 0) {
            sum += i
        }
        
        if i % 15 == 0 {
            sum -= i
        }
    }
    
    return sum
}
let p1 = problem1()
