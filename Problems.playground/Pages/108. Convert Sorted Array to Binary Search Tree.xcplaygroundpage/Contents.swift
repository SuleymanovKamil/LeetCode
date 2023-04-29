/*
 108. Convert Sorted Array to Binary Search Tree
 Easy

 Given an integer array nums where the elements are sorted in ascending order, convert it to a height-balanced binary search tree.

 Example 1:
     Input: nums = [-10,-3,0,5,9]
     Output: [0,-3,9,-10,null,5]

 Example 2:
     Input: nums = [1,3]
     Output: [3,1]
     Explanation: [1,null,3] and [3,1] are both height-balanced BSTs.

 */

import Foundation

func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
    guard nums.count > 0 else { return nil }
    let mid = nums.count / 2
    var treeNode = TreeNode(nums[mid])
    treeNode.left = sortedArrayToBST(Array(nums[0 ..< mid]))
    treeNode.right = sortedArrayToBST(Array(nums[mid + 1 ..< nums.count]))
    return treeNode
}

sortedArrayToBST([-10,-3,0,5,9])
