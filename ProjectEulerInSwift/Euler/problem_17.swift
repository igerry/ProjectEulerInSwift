import Foundation

/*
 Number letter counts
 Problem 17
 21124
 
 If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
 
 If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
 
 
 NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
 */
func wordsForNumberUnder1001(n:Int, tens:[Int:Int]) -> Int {
    
    if n <= 20 || n == 1000 {
        return tens[n]!
    }
    
    let numberOfHundreds:Int = n / 100
    let ab:Int = n - numberOfHundreds * 100
    let a0:Int = ab / 10 * 10
    let b:Int = ab % 10
    
    var sum = 0;
    // 100 - 999
    if numberOfHundreds > 0 {
        sum += tens[numberOfHundreds]! + tens[100]!
        if ab != 0 {
            sum += 3 // "and"
        }
    }
    
    // 10 - 90
    if ab < 10 || ab >= 20 {
        sum += tens[a0]!
        sum += tens[b]!
    } else {
        // 11 - 19
        sum += tens[ab]!
    }
    
    print("n=\(n), n=\(numberOfHundreds)\(ab), ab=\(a0)+\(b), sum=\(sum)")
    return sum
}

func problem17() -> Int {
    let tens:[Int:Int] = [
        0:0, // ""
        1:3, // one
        2:3, // two
        3:5, // three
        4:4, // four
        5:4, // five
        6:3, // six
        7:5, // seven
        8:5, // eight
        9:4, // nine
        
        10:3, // ten
        11:6, // eleven
        12:6, // twelve
        13:8, // thirteen
        14:8, // fourteen
        15:7, // fifteen
        16:7, // sixteen
        17:9, // seventeen
        18:8, // eighteen
        19:8, // nineteen
        
        20:6, // twenty
        30:6, // thirty
        40:5, // forty
        50:5, // fifty
        60:5, // sixty
        70:7, // seventy
        80:6, // eighty
        90:6, // ninety
        
        100:7, // hundred
        1000:11, // one thousand
    ]
    
    var sum = 0
    for i in 1...1000 {
        sum += wordsForNumberUnder1001(i, tens: tens)
    }
    
    return sum
}
let p17 = problem17()
