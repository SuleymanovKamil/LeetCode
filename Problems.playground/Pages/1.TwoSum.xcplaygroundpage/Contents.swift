//Easy

/*
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
You may assume that each input would have exactly one solution, and you may not use the same element twice.
You can return the answer in any order.

Example 1:
    Input: nums = [2,7,11,15], target = 9
    Output: [0,1]
    Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

Example 2:
    Input: nums = [3,2,4], target = 6
    Output: [1,2]

Example 3:
    Input: nums = [3,3], target = 6
    Output: [0,1]
*/

import Foundation


func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var indices: [Int] = []

    for (key, value) in nums.enumerated() {
        for (key1, value1) in nums.enumerated() {
            if value + value1 == target, indices.count < 2, key != key1 {
                indices.append(contentsOf: [key, key1])
            }
        }
    }

    return indices
}


func twoSumOptimal(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int:Int]()

    for (i, n) in nums.enumerated() {
        if let val = dict[target-n] { return [val, i] }
        dict[n] = i
    }

    return Array(dict.keys)
}


twoSum([3,3], 6)
twoSum([2,7,11,15], 9)
twoSum([-3,4,3,90], 0)


