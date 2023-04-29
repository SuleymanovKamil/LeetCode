/*
58. Length of Last Word
Easy

Given a string s consisting of words and spaces, return the length of the last word in the string.
A word is a maximal substring consisting of non-space characters only.

Example 1:
    Input: s = "Hello World"
    Output: 5
    Explanation: The last word is "World" with length 5.

Example 2:
    Input: s = "   fly me   to   the moon  "
    Output: 4
    Explanation: The last word is "moon" with length 4.

Example 3:
    Input: s = "luffy is still joyboy"
    Output: 6
    Explanation: The last word is "joyboy" with length 6.
*/

import Foundation

func lengthOfLastWord(_ s: String) -> Int {
    let lastWord = s.components(separatedBy: CharacterSet.alphanumerics.inverted).filter { !$0.isEmpty }.last
    return lastWord!.count
}

lengthOfLastWord("   fly me   to   the moon  ")

func lengthOfLastWord2(_ s: String) -> Int {
    return s.split(separator: " ").last?.count ?? 0
}
