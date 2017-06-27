//: Playground - noun: a place where people can play
//: [Next page](@next)
    //The followup line of markup adds a link to the next page of the playground.
/// Use three forward slash (/) characters for a single line of markup Quick Help.


import UIKit
print("Highlight section of code | Command + / | to \"Comment out\" ")
print("Highlight section of code | Command + [ or ] | to \"Indent L or R\" ")
var str = "Hello"
print(str)
for character in str.characters {
    print(character)
}

let thisArray = ["Shoe", "Shirt", "Boxers", "Beanie"]
for item in thisArray where item.hasPrefix("S") {
    print("\(item) is \(item.characters.count) characters long")
}

let names = ["Lily", "Santiago", "Justyn", "Aadya"]
// an array of String values

let ages = ["Mohsen": 17, "Amy": 40, "Graham": 5]
// a dictionary with String keys and Int values

for (name, age) in ages {
    print("\(name), \(age)yrs")
}










// For-In loop iterating over key & value. (name, age) known as a "tuple"

/* while !endOfFile {
    readLine()
} */            //Loops: While and Repeat-While

/* repeat {
    performTask()
} while tasksRemaining >0 */

var packingList = ["Socks", "Shoes"]
print(packingList[0])
packingList.append("Trousers") //at index[2]
packingList[2] = "Jeans" //change item at [2] to "Jeans"
packingList.append(contentsOf: ["Shorts", "Sandals", "Sunblock"])
packingList[3...5] = ["Hoodie", "Scarf"]
//pass range into subscript. Note: changing 3 items with 2
print(packingList)








// Adding to dictionary: note: var, not let. Initializing new "ages2" dictionary because of previous one in use.
var ages2 = ["Mohsen": 17, "Amy": 40, "Graham": 5]
ages2["Justyn"] = 67    //Adds new value for the "Justyn" Key.
ages2["Justyn"] = 68    //Changes value for the same Key, "Justyn".

//Retrieving a Value from a dictionary: (Using let ages = [])
let possibleAge = ages["Amy"]
//Optionals:
//let possibleAge: Int? = ages["Daryl"]

//Int?. ? means there might or might not be a value.

if possibleAge == nil {
    print("age not found")
}





//If-Let Statement
if let age = ages["Amy"] {
    print("An age of \(age) was found")
}
//Says: if the dictionary(ages[]) contains a value for amy, let a new constant called "age" equal that value.







//Switch Statement:
let myAge = 91
switch myAge {
case 1:
    print("Happy 1st Bday")
case 13...19:
    print("Happy teens!")
case let decade where decade % 10 == 0:
    print("Happy \(decade)th birthday!")
default:
    print("HBD :/")
}
//default catches every other case that's not defined.
//without "default" you get - error: switch must be exhaustive, consider adding a default clause

let userName = "bob"
let passwordIsValid = true
switch (userName, passwordIsValid) {
case ("admin", true):
    print("Welcome back, admin")
case ("guest", _):
    print("Guests are not allowed in this restricted area.")
    //guest not allowed even if passwordIsValid = true. So we can ignore the password with "_" and means to just match any possible value.
    
    //For all other users, don't care username, just password. So ignore username with "_".
    //Create temporary constant: isValid
//Terniary condiontal operator (_?_:_) - if isValid, "welcome", otherwise "deny".
case (_, let isValid):
    print(isValid ? "Welcome to the restricted area!" : "ACCESS DENIED.")
    
    //Note: doesn't have default statement because it is already complete.
    //Final case covers all of the possible conditions not already matched above
}
print()









// FUNCTIONS AND CLOSURES:
func sendMessage() {
    let message = "Hey there!"
    print(message)
}
sendMessage()

//now let's add parameter to func...
//ex. funch sendMessage(parameterName: TYPE)

func sendMessage2(shouting: Bool) {     //The Parameter's name provides a label for the argument you pass in. Labelling arguments makes your code read better and makes the purpose/intent of each argument clear. Bool is Argument, shouting is Argument label.
    var message2 = "Hey there!"
    if shouting {
        message2 = message2.uppercased()
    }
    print(message2)
}
sendMessage2(shouting: true)

//now let's add a recipient parameter, with an EXPLICIT ARGUMENT LABEL infront...
//additionally, add a message parameter of type String...

func sendMessage3(_ message: String, to recipient: String, shouting: Bool) {
    //you can use "to" when you call the func: sendMessage3()
    //and you can still use "recipient inside body of function. (Look below)
    
    var message3 = "\(message), \(recipient)!"    //Included "recipient's name using STRING INTERPOLATION. \(string)
    if shouting {
        message3 = message3.uppercased()
    }
    print(message3)
}

sendMessage3("This is argument needs no label, thanks to the underscore!", to: "Kevin", shouting: true)

/*Review:
 1. func functionName() {define here}
 2. functionName(parameterName: TYPE) ... parameterName aka label, for argument you pass (TYPE)
 3. Explicit Argument Label: (expArgLabel parameterName: TYPE) can use either word for calling the func or for use inside body of func
 4. Omitting Argument Labels: (_ parameterName: TYPE) ... don't need label when you call the func, just the argument. 
 */; print()








// FUNCTION RETURN VALUES:

//"Let's look at some of the ways functions can return values. Let's say you want to write a function that returns a first string in an array, that has a give prefix. The function takes a stringPrefix, an array of strings, and it returns the string with the given prefix. As you can see, you use an arrow to indicate what type of values your function can return... in the case below: String."

func firstString(havingPrefix prefix: String, in strings: [String]) -> String? {
    for string in strings {
        if string.hasPrefix(prefix) {
            return string
        }
    }
    return nil
}

//"But what do you return if the array doesn't contain a string you're looking for? Well because this function was declared to return a string, the only option you have is some valid string value. In this case, the empty string... but this is not good Swift code."
//"However, Optionals are perfect for representing values that may be missing so you just need to change the return type of this function to be an Optional String by writing a "?" after "String", and now you can return "nil" when the string isn't found. (Done above)"

var guests = ["Jack", "Kumar", "Onita", "Bonna"] //Change names to start with "A" or not.

if let guest = firstString(havingPrefix: "A", in: guests) {
    print ("\(guest) starts with 'A'")
} else {
    print("No guest in guests hasPrefix(\"A\")")
}
print()









// FILTERING NUMBERS

/* SYNTAX for FUNCTION TYPES.
All function types in swift have this basic form:
(parameter types) -> return type

func sendMessage3() {...}
    () -> Void... Void means it doesn't return any values.

func  firstString(havingPrefix prefix: String, in strings: [String]) -> String? {...}
    (String, [String]) -> String? Takes a string, an array of strings, and returns optional string
*/ //:24:28

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
    return result //filterInts() is expected to return -> [Int] so must end with "return", and var result is declared with type array of [Int]
}

func divisibleByTwo(_ number: Int) -> Bool {
    return number % 2 == 0
    
    // the TYPE of divisibleByTwo matches the TYPE of includeNumber parameter, so we can pass the divisibleByTwo function as an argument to filterInts.
}
let numbers = [4, 17, 34, 41, 82]
let evenNumbers = filterInts(numbers, divisibleByTwo)
print(evenNumbers)

