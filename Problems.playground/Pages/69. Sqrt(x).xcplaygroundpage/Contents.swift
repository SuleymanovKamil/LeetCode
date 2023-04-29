/*
 69. Sqrt(x)
 Easy
 
 Given a non-negative integer x, return the square root of x rounded down to the nearest integer. The returned integer should be non-negative as well.
 You must not use any built-in exponent function or operator.
 For example, do not use pow(x, 0.5) in c++ or x ** 0.5 in python.

 Example 1:
     Input: x = 4
     Output: 2
     Explanation: The square root of 4 is 2, so we return 2.

 Example 2:
     Input: x = 8
     Output: 2
     Explanation: The square root of 8 is 2.82842..., and since we round it down to the nearest integer, 2 is returned.
 */

import Foundation

func mySqrt(_ x: Int) -> Int {
    var guess = Double(x) / 2.0
    var prevGuess: Double = 0.0
    
    while guess != prevGuess {
        prevGuess = guess
        guess = (guess + Double(x) / guess) / 2.0
    }
    
    return Int(guess)
}

mySqrt(8)
