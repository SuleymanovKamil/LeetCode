/*
3. Longest Substring Without Repeating Characters
Medium

Given a string s, find the length of the longest substring without repeating characters.

Example 1:
    Input: s = "abcabcbb"
    Output: 3
    Explanation: The answer is "abc", with the length of 3.

Example 2:
    Input: s = "bbbbb"
    Output: 1
    Explanation: The answer is "b", with the length of 1.

Example 3:
    Input: s = "pwwkew"
    Output: 3
    Explanation: The answer is "wke", with the length of 3.
    Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
*/

import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
    var array: [Character] = []
    var array2: [Int] = []
    var string = String()
    let arrStr = Array(s)

    for (key, value) in s.trimmingCharacters(in: .whitespacesAndNewlines).enumerated() {
        if !array.contains(value) {
            array.append(value)
        } else {
            array.removeAll()
            array.append(value)
            array2.append(key)
        }
    }


    if let firstIndex = array2.first {
        array = Array(arrStr[firstIndex - 1..<s.count])
        if array2.count > 1 {
            array = Array(arrStr[firstIndex..<array2[1]])
        }

    }

    return array.count
}

func lengthOfLongestSubstringOptimal(_ s: String) -> Int {
    guard !s.isEmpty else { return 0 }
        var len = 0, chars = [Character]()
        for c in s {
            if let idx = chars.firstIndex(of: c) {
                chars.removeSubrange(0...idx)
            }
            chars.append(c)
            len = max(len, chars.count)
        }
        return len
}

//lengthOfLongestSubstring("abcabcbb")
//lengthOfLongestSubstring("pwwkew")
//lengthOfLongestSubstring("dvdf")
//lengthOfLongestSubstring("aa")
//lengthOfLongestSubstring("au")
lengthOfLongestSubstring("au")
