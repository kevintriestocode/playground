//: [Previous](@previous)

import Foundation

//: 25:23

let numbers = [4, 17, 34, 41, 82]

func filterInts(_ numbers: [Int], _ includeNumber: (Int) -> Bool) -> [Int] {
    // The (_ includeNumber: type) parameter can be any function that takes an interger and returns a bool.
    
    var result: [Int] = []
    // Need to build up an array of filtered numbers.
    // variable "result" that initialized to an empty array of Ints ???
    
    for number in numbers {
        //as you iterate through the array of numbers passed into the function, you need to check whether each number should be included in the result array.
        
        if includeNumber(number) {
            result.append(number)
            //to do that, you pass each number to the includeNumber() function.
            //Notice that inside the body of filterInts(), the (includeNumber:) parameter is treated as the name of the function it's passed in. That's how you write a function that takes another function as a parameter.
        }
    }
    return result
}

func divisibleByTwo(_ number: Int) -> Bool {
    return number % 2 == 0
    
    // the TYPE of divisibleByTwo matches the TYPE of includeNumber parameter, so we can pass the divisibleByTwo function as an argument to filterInts.
}

let evenNumbers = filterInts(numbers, divisibleByTwo)
print(evenNumbers)

//: [Next](@next)
