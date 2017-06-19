//: Playground - noun: a place where people can play

import UIKit

var str = "Hello"
print(str)

for character in str.characters {
    print(character)
}

let names = ["Serenity", "Sulaco", "Enterprise", "Galactica"]

print(names[0])

for name in names where name.hasPrefix("S") {
    print("\(name) is \(name.characters.count) characters long")
}

// Since the "names" array was declared with "let", it is a constant, therefore it cannot change.
/* values.names.append("Steven")
 Will not work because you cannot append to a constant.
 If the array was declare with "var", it would work. :D */



