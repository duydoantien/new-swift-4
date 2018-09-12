# What's new in Swift 4

## Descriptions
> This repository to contain all exampples about ``What is new in Swift 4``

## Contents
### 1. Swifty encoding and decoding
Swift 4 introduces a new Codable protocol that lets you serialize and deserialize custom data types without writing any special code – and without having to worry about losing your value types.
```swift
struct Student : Codable {
  var name: String
  var age: Int
  var address: String
}
let jackson = Student(name: "Jackson", age: 20, address: "Canada")
let andrea = Student(name: "Andrea", age: 23, address: "Italy")

/// Encoding
let encoder = JSONEncoder()
let encoded = try encoder.encode(jackson)
let jsonData = String(data: encoded, encoding: .utf8)
print(jsonData!)

/// Decoding
let decoder = JSONDecoder()
let decoded = try decoder.decode(Student.self, from: encoded)
print("Hello my name is \(decoded.name). I'm \(decoded.age) years old. I'm from \(decoded.address)")
```
### 2. Multi-line string literals
Swift 4 support multi-line string by using `"""` `"""`. Below is a example about multiline string in swift:
```swift
let multilineString = """
Hello my name is Duy
I'm working at Agility
I'm a developer
"""
print(multilineString)
```
The result will be:
```
Hello my name is Duy
I'm working at Agility
I'm a developer
```

### 3. Improved keypaths for key-value coding
Easy access to value of object using keypaths 
```swift
struct Song {
  var name: String
  var artist: String
}
let myLove = Song(name: "My Love", artist: "Westlife")
let nameSong = \Song.name
let artistSong = \Song.artist
print("You are listing \(myLove[keyPath: nameSong]) of \(myLove[keyPath: artistSong])")
```
Let's see on the result
```
You are listing My Love of Westlife
```

### 4. Strings are collections again
This means that we can reverse them, loop over them , `map()` and `flatMap()` them, and more.
This is a example to see that strings are collections
```swift
let greeting = "Hello world !"
let reversed = greeting.reversed()
for letter in reversed {
  print(letter)
}
```

### 5. One-sided ranges
Easier to access elements on an array to create new array
Example:
```swift
let teams = ["Jad", "Alex", "John", "Kevil", "Tim"]
let bigTeams = teams[..<4]
let smallTeam = teams[3...]
print(bigTeams)
print(smallTeam)
```
And we will see two new arrays
`
["Jad", "Alex", "John", "Kevil"]
` and `["Kevil", "Tim"]`

### 6. Improved dictionary functionality
One of the most intriguing proposals for Swift 4 was to add some new functionality to dictionaries to make them more powerful, and also to make them behave more like you would expect in certain situations.

Can filtering dictionaries and return a new dictionrary
```switf
let classes = ["A1": 100, "A2": 100, "A3": 50, "A4": 150];
let bigClasses = classes.filter{$0.value > 100}
print(bigClasses)
```
Dictionary mapping
```swift
let mappedClasses = classes.mapValues{"\($0)"}
print(mappedClasses)
```
Can set default value for a optional key in dictionary
```swift
let defaultA2 = classes["A5", default: 300]
print(defaultA2)
```
Dictionary grouping
```swift
let groupDicts = Dictionary(grouping: classes.values) { $0 }
print(groupDicts)
```

### 7. Generic Subscripts
Swift 4 lets you create generic subscripts: both the subscript’s parameters and return type may be generic
```swift
subscript(minValue: Element, maxValue: Element) -> [Element] {
  var array: [Element] = []
  if let minimum = self.min(), minimum == minValue {
    array.append(minValue)
  }
  if let maximum = self.max(), maximum == maxValue {
    array.append(maxValue)
  }
  return array
}
```

### 8. Mixing Classes with Protocols
We can combine protocols together in Swift 3 when creating constants and variables. Swift 4 goes one step further and lets you add classes to the mix using the same syntax.
```swift
protocol ImageProtocol {}
class ImageClass {}

class Image : ImageClass, ImageProtocol {}

let newImage : ImageClass & ImageProtocol
```

### 9. Mutating method
Swift 4 takes a totally different approach by replacing the method with a `swapAt(_:_:)` one which takes the two elements corresponding indices and swaps them.
```swift
var numbers = [1, 5, 2, 8, 4, 10]
print(numbers) // Value will [1, 5, 2, 8, 4, 10]
numbers.swapAt(0, 1)
print(numbers) // Value will [5, 1, 2, 8, 4, 10]
```

### 10. Private vs Fileprivate in Extensions
We can now use the `private` access level instead of the `fileprivate` one in Swift 4 in order to access class properties in an extension

### 11. NSNumber Improvements
Swift 4 can typecast an `NSNumber` to an `UInt8`


## Meta
Author: Duy Doan

Distributed under the MIT license. See ``LICENSE`` for more information.