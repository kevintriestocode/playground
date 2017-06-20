//: Playground - noun: a place where people can play

import UIKit

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

//Adding to dictionary: note: var, not let. Initializing new "ages2" dictionary because of previous one in use.
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
let passwordIsValid = false
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



