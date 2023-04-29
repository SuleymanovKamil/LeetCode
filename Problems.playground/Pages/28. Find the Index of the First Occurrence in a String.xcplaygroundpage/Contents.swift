/*
35. Search Insert Position
Easy

Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

Example 1:
    Input: haystack = "sadbutsad", needle = "sad"
    Output: 0
    Explanation: "sad" occurs at index 0 and 6.
    The first occurrence is at index 0, so we return 0.

Example 2:
    Input: haystack = "leetcode", needle = "leeto"
    Output: -1
    Explanation: "leeto" did not occur in "leetcode", so we return -1.
*/

import Foundation

func strStr(_ haystack: String, _ needle: String) -> Int {
    if let range: Range<String.Index> = haystack.range(of: needle) {
        let index: Int = haystack.distance(from: haystack.startIndex, to: range.lowerBound)
        return index
    }

    return -1
}

strStr("mississippi", "issip")

