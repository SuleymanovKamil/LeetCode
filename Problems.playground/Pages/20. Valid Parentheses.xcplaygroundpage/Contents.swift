/*
Easy

Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:
Open brackets must be closed by the same type of brackets.
Open brackets must be closed in the correct order.
Every close bracket has a corresponding open bracket of the same type.

Example 1:
    Input: s = "()"
    Output: true

Example 2:
    Input: s = "()[]{}"
    Output: true

Example 3:
    Input: s = "(]"
    Output: false
*/

import Foundation

func isValid(_ s: String) -> Bool {
    let array = Array(s)
    guard let last = array.last else { return false }

    if last == ")"  {
        return checkBrackets(array: array, firstSymbol: "(", lastSymbol: last)
    } else if last == "}" {
        return checkBrackets(array: array, firstSymbol: "{", lastSymbol: last)
    } else if last == "]" {
        return checkBrackets(array: array, firstSymbol: "[", lastSymbol: last)
    } else {
        return false
    }
}

func checkBrackets(array: [Character], firstSymbol: Character, lastSymbol: Character) -> Bool {
    let index = array.firstIndex(where: {$0 == firstSymbol})

    if  array.contains(firstSymbol) && index! < array.count {
        return true
    } else {
        return false
    }
}

func isValidOptimal(_ s: String) -> Bool {

    guard s.count % 2 == 0 else { return false }

    var stack: [Character] = []

    for ch in s {
        switch ch {
        case "(":
            stack.append(")")
        case "[":
            stack.append("]")
        case "{":
            stack.append("}")
        default:
            if stack.isEmpty || stack.removeLast() != ch {
                return false
            }
        }
    }

    return stack.isEmpty
}

//isValid("()[]{}")
//isValid("{[]}")
isValid("([)]")
