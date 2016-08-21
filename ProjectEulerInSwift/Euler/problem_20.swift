import Foundation

/*
 Factorial digit sum
 Problem 20
 648
 
 n! means n × (n − 1) × ... × 3 × 2 × 1
 
 For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
 and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
 
 Find the sum of the digits in the number 100!
 */
func times(bigNumber:[Int], n:Int) -> [Int] {
    var results = [Int]()
    
    for i in (0..<bigNumber.count).reverse() {
        results.append(bigNumber[i] * n)
    }
    
    let resultsCount = results.count
    for j in 0..<resultsCount {
        let digit = results[j] % 10
        var merge = (results[j] - digit) / 10

        results[j] = digit
        if j < resultsCount - 1 {
            results[j + 1] += merge
        } else {
            while (merge != 0) {
                results.append(merge % 10)
                merge = (merge - merge % 10) / 10
            }
        }
    }
    
    return results.reverse()
}

func problem20() -> Int {
    var result = [1]
    for i in 1...100 {
        result = times(result, n:i)
        print("*\(i)")
        print("\(result)")
    }
    
    var sum = 0
    for i in result {
        sum += i
    }
    
    return sum
}
let p20 = problem20()
