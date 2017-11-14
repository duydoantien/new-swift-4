//: Playground - noun: a place where people can play

import UIKit

/// Example about dictionary

/// Can filtering dictionaries and return a new dictionrary
let classes = ["A1": 100, "A2": 100, "A3": 50, "A4": 150];
let bigClasses = classes.filter{$0.value > 100}
print(bigClasses)

/// Dictionary mapping
let mappedClasses = classes.mapValues{"\($0)"}
print(mappedClasses)

/// Dictionary default values
let defaultA2 = classes["A5", default: 300]
print(defaultA2)

/// Dictionary grouping
let groupDicts = Dictionary(grouping: classes.values) { $0 }
print(groupDicts)


