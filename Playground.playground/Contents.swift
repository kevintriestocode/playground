//: Playground - noun: a place where people can play

import UIKit

var str = "Hello"
print(str)

for character in str.characters {
    print(character)
}

let thisArray = ["Shoe", "Shirt", "Boxers", "Beanie"]

print(" ")

print(thisArray[0])

print(" ")

for item in thisArray where item.hasPrefix("S") {
    print("\(item) is \(item.characters.count) characters long")
}

print(" ")

//Below prints "S" prefix w/ characters.count.
for item in thisArray {
    if item.hasPrefix("S") {
        print("\(item) is \(item.characters.count) characters long")
    } else {
        print(item)
    }
}

// Since the "names" array was declared with "let", it is a constant, therefore it cannot change.
/* values.names.append("Steven")
 Will not work because you cannot append to a constant.
 If the array was declare with "var", it would work. :D */

/*This message is after I pushed the Playground.playground to GitHub. Will try to:
 1. pull
 2. commit
 3. push
 4. exit Xcode
 5. reopen Xcode and select GitHub repo.
 6. Hopefully you see this future Kevin!
 */

