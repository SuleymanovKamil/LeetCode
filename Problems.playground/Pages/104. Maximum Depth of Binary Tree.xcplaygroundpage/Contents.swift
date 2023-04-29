/*
 104. Maximum Depth of Binary Tree
 Easy

 Given the root of a binary tree, return its maximum depth.
 A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

 Example 1:
     Input: root = [3,9,20,null,null,15,7]
     Output: 3

 Example 2:
     Input: root = [1,null,2]
     Output: 2
 */

import Foundation

func maxDepth(_ root: TreeNode?) -> Int {
    return root == nil ? 0 : max(maxDepth(root!.left), maxDepth(root!.right)) + 1
}

func checkTree(_ root: TreeNode?) -> TreeNode? {
    if root?.left != nil {
        return checkTree(root?.left)
    } else if root?.right != nil {
        return checkTree(root?.right)
    } else {
        return root
    }
}

maxDepth(TreeNode([3,9,20,nil,nil,15,7]))
