//: [Previous](@previous)

import Foundation

//: 25:23

// Example of passing a function as an argument in another function.

let numbers = [4, 17, 34, 41, 82]

func filterInts(_ numbers: [Int], _ includeNumber: (Int) -> Bool) -> [Int] {
    var result: [Int] = []
    for number in numbers {
        if includeNumber(number) {
            result.append(number)
        }
    }
    return result
}

func divisibleByTwo(_ number: Int) -> Bool {
    return number % 2 == 0
}

//let evenNumbers = filterInts(numbers, { (_ number: Int) -> Bool in return number % 2 == 0 })
//Type Inference In Closures
//let evenNumbers = filterInts(numbers, { number in return number % 2 == 0 })
//let evenNumbers = filterInts(numbers, { number in number % 2 == 0 })
//Implicit Arguments In Closures
//let evenNumbers = filterInts(numbers, { $0 % 2 == 0 })
//Trailing Closures
let evenNumbers = filterInts(numbers) { $0 % 2 == 0 }


//:29:01
print(evenNumbers)

let evenDigitSums = filterInts(numbers) { number in
    var sum = 0, number = number
    while number > 0 {
        //... calculate sum of digits
        //... 82 is 8 + 2 = 10, which is even
    }
    return sum % 2 == 0
}
print(evenDigitSums)










//: [Next](@next)
