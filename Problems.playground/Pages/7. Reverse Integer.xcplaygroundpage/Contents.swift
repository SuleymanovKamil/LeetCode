//Medium

/*
Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

Example 1:
    Input: x = 123
    Output: 321

Example 2:
    Input: x = -123
    Output: -321

Example 3:
    Input: x = 120
    Output: 21
*/



import Foundation

class Solution {
    func reverse(_ x: Int) -> Int {
        guard x != 0 else {
            return 0
        }

        var string = String(String(x).reversed())
        if string.last == "-" {
            string = String(string.dropLast())
            string = "-" + string
        }
        if string.first == "0" {
            string = String(string.dropFirst())
        }

        let newValue = Int(string)!

        guard newValue > -2147483647 && newValue < 2147483647 else {
            return 0
        }

        return newValue
    }

    func reverseOptimal(_ x: Int) -> Int {
         var r = 0, x = x
         while x != 0 {
             r = r * 10
             r = r + (x % 10)
             x /= 10
         }
         return r < Int32.min || r > Int32.max ? 0 : r
     }
}
