/*
 110. Balanced Binary Tree
 Easy

 Given a binary tree, determine if it is height-balanced

 Example 1:
     Input: root = [3,9,20,null,null,15,7]
     Output: true

 Example 2:
     Input: root = [1,2,2,3,3,null,null,4,4]
     Output: false

 Example 3:
     Input: root = []
     Output: true
 */

import Foundation

func isBalanced(_ root: TreeNode?) -> Bool {
    guard let root = root else { return true }
    if !isBalanced(root.left) || !isBalanced(root.right) { return false }
    return abs(val(root.left) - val(root.right)) <= 1
}


private func val(_ treeNode: TreeNode?) -> Int {
    guard let node = treeNode else { return -1 }
    return 1 + max(val(node.left), val(node.right))
}

isBalanced(TreeNode([3,9,20,nil,nil,15,7]))
//isBalanced(TreeNode([1,2,2,3,3,nil,nil,4,4]))
