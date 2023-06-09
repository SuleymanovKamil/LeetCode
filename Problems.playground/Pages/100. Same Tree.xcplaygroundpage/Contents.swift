/*
100. Same Tree
Easy

Given the roots of two binary trees p and q, write a function to check if they are the same or not.
Two binary trees are considered the same if they are structurally identical, and the nodes have the same value.

Example 1:
    Input: p = [1,2,3], q = [1,2,3]
    Output: true

Example 2:
    Input: p = [1,2], q = [1,null,2]
    Output: false

Example 3:
    Input: p = [1,2,1], q = [1,1,2]
    Output: false
*/

import Foundation

func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    guard p != nil || q != nil else { return true }

    guard let p = p, let q = q else { return false }

    return p.val == q.val && isSameTree(p.left, q.left) && isSameTree(p.right, q.right)
}

isSameTree(TreeNode([1,2,3]), TreeNode([1,2,3]))
