//: Playground - noun: a place where people can play

import UIKit

/// Example about mixing classes with protocol
protocol ImageProtocol {}
class ImageClass {}

class Image : ImageClass, ImageProtocol {}

let newImage : ImageClass & ImageProtocol

