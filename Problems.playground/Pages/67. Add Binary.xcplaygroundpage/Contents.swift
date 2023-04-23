/*
 Given two binary strings a and b, return their sum as a binary string.

 Example 1:
     Input: a = "11", b = "1"
     Output: "100"

 Example 2:
     Input: a = "1010", b = "1011"
     Output: "10101"
 */

import Foundation

func addBinary(_ a: String, _ b: String) -> String {
    var carry = 0
    var result = ""
    var i = a.count - 1
    var j = b.count - 1

    while i >= 0 || j >= 0 || carry > 0 {
        let digitA = i >= 0 ? Int(String(a[a.index(a.startIndex, offsetBy: i)]))! : 0
        let digitB = j >= 0 ? Int(String(b[b.index(b.startIndex, offsetBy: j)]))! : 0

        let sum = digitA + digitB + carry
        carry = sum / 2
        let remainder = sum % 2
        
        result = "\(remainder)" + result

        i -= 1
        j -= 1
    }

    return result
}

addBinary("1010", "1011")
