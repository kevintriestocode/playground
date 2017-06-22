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

let evenNumbers = filterInts(numbers, divisibleByTwo)
print(evenNumbers)

//: [Next](@next)
