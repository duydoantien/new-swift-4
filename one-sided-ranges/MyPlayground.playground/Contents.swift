//: Playground - noun: a place where people can play

import UIKit

/// Example about one-sided ranges

let teams = ["Jad", "Alex", "John", "Kevil", "Tim"]
let bigTeams = teams[..<4]
let smallTeam = teams[3...]
print(bigTeams)
print(smallTeam)

