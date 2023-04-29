/*
 94. Binary Tree Inorder Traversal
 Easy
 Given the root of a binary tree, return the inorder traversal of its nodes' values.

 1
  \
   2
 /
3

 Example 1:
     Input: root = [1,null,2,3]
     Output: [1,3,2]

 Example 2:
     Input: root = []
     Output: []

 Example 3:
     Input: root = [1]
     Output: [1]
 */


import Foundation

func inorderTraversal(_ root: TreeNode?) -> [Int] {
    var values: [Int] = []
    var val = root
    var array: [TreeNode?] = []

    while val != nil || !array.isEmpty {
        while val != nil {
            array.append(val)
            val = val?.left
        }
        val = array.removeLast()
        if let val = val?.val {
            values.append(val)
        }
        val = val?.right
    }

    return values
}


