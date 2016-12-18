//: Playground - noun: a place where people can play

import UIKit
import PrettyExtensionsKit

Int32.min
Int32.max


let bounce = Int(Int32.min)..<Int(Int32.max)

let clampedBounce1 = (0..<2147483700).clamped(to: bounce)
clampedBounce1.lowerBound
clampedBounce1.upperBound

let clampedBounce2 = (0..<2147483700).clamped(to: bounce)
clampedBounce2.lowerBound
clampedBounce2.upperBound

Int.random((-2147483700)..<(-2147483700))
Int.random((-2147483700)...(-2147483700))

Int.random(Int(Int32.min)..<Int(Int32.max))
Int.random(Int(Int32.min)...Int(Int32.max))

(100...300).randomFloat


Float.randomFractional()
CGFloat.random(0...2)