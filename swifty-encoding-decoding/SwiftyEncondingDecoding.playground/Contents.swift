//: Playground - noun: a place where people can play

import UIKit
/// Example about encoding and decoding

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

