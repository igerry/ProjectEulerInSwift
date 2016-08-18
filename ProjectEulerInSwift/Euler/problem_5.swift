import Foundation

/*
 Smallest Multiple
 Problem 5
 
 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
 
 What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
 */
func lcm(divisors: [UInt]) -> UInt {
    if divisors.count == 0 {
        return 0
    } else if divisors.count == 1 {
        return divisors[0]
    } else if divisors.count == 2 {
        return lcm(divisors[0], second: divisors[1])
    } else {
        var condensed = divisors
        let first = condensed.removeFirst()
        let second = condensed.removeFirst()
        condensed.append(lcm([first, second]))
        return lcm(condensed)
    }
}

func lcm(first: UInt, second: UInt) -> UInt {
    let bigger = max(first, second)
    var current = bigger
    while (current % first) != 0 || (current % second) != 0 {
        current = current + bigger
    }
    print("lcm(\(first), \(second)) -> \(current)")
    return current
}

func problem5() -> UInt {
    let divisors : [UInt] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
    return lcm(divisors)
}
let p5 = problem5()
