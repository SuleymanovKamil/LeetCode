/*
35. Search Insert Position
Easy

Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
You must write an algorithm with O(log n) runtime complexity.

Example 1:
    Input: nums = [1,3,5,6], target = 5
    Output: 2

Example 2:
    Input: nums = [1,3,5,6], target = 2
    Output: 1

Example 3:
    Input: nums = [1,3,5,6], target = 7
    Output: 4
*/

import Foundation

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    if target < nums.first ?? 0 { return 0 }
    if target > nums.last ?? 0 { return nums.count }
    
    if nums.contains(target) {
        return nums.firstIndex(where: {$0 == target}) ?? 0
    } else {
        return (nums.firstIndex(where: {$0 + 1 == target}) ?? 0) + 1
    }

}

searchInsert([2,3,4,7,8,9], 11)
