//: Playground - noun: a place where people can play

import UIKit
/// Example for key-value coding

struct Song {
  var name: String
  var artist: String
}

let myLove = Song(name: "My Love", artist: "Westlife")

let nameSong = \Song.name
let artistSong = \Song.artist
print("You are listing \(myLove[keyPath: nameSong]) of \(myLove[keyPath: artistSong])")
