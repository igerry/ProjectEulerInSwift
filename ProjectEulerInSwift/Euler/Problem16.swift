import Foundation

/*
 Power digit sum
 Problem 16
 1366
 
 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
 
 What is the sum of the digits of the number 2^1000?
 */
class Problem16 {

    func solution() -> Int {
        var results = [0:1]
        
        var loop = 0
        while loop < 1000 {
            // multiply
            let n = results.count
            for i in 0..<n {
                results[i] = results[i]! * 2
            }
            // adjust
            for i in 0..<n {
                let s = results[i]! / 10
                let t = results[i]! % 10
                
                results[i] = t
                if results[i+1] == nil {
                    results[i+1] = 0
                }
                results[i+1]! += s
            }
            
            loop += 1
        }
        
        var sum = 0
        for i in 0..<results.count {
            sum += results[i]!
        }
        
        return sum
    }

}
