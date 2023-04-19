/*
Easy

Write a function to find the longest common prefix string amongst an array of strings.
If there is no common prefix, return an empty string "".

Example 1:
    Input: strs = ["flower","flow","flight"]
    Output: "fl"

Example 2:
    Input: strs = ["dog","racecar","car"]
    Output: ""
    Explanation: There is no common prefix among the input strings.
*/

import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    let sets: [Set<Character>] = strs.map({ Set($0)})
    let firstList = sets.first ?? []
    let commonElements = sets.reduce(Set(firstList)) { (result, list)  in
        result.intersection(list)
    }

    return String(commonElements)
}

func longestCommonPrefixOptimal(_ strs: [String]) -> String {
    if strs.isEmpty { return "" }
    var common = strs[0]

    for ch in strs {
        while !ch.hasPrefix(common) {
            common = String(common.dropLast())
        }
    }
    return common
}

longestCommonPrefix(["flower","flow","flight"])
