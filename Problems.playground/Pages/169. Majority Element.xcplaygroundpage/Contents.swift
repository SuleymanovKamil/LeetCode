/*
 169. Majority Element
 Easy

 Given an array nums of size n, return the majority element.
 The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

 Example 1:
 Input: nums = [3,2,3]
 Output: 3

 Example 2:
 Input: nums = [2,2,1,1,1,2,2]
 Output: 2
 */

import Foundation

func majorityElement(_ nums: [Int]) -> Int {
    var dict: [Int: Int] = [:]
    for (key, value) in nums.enumerated() {
        if !dict.keys.contains(value) {
            dict[value] = 1
        } else {
            dict[value] = dict[value]! + 1
        }
    }

    return (dict.first(where: { $0.value == Array(dict.values).sorted(by: >).first })?.key)!
}

majorityElement([6,6,6,7,7])

func majorityElementGreatSolution(_ nums: [Int]) -> Int {
    nums.sorted(by:<)[nums.count / 2]
}

majorityElementGreatSolution([6,6,6,7,7])
