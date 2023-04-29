/*
 101. Symmetric Tree
 Easy

 Given the root of a binary tree, check whether it is a mirror of itself (i.e., symmetric around its center).

 Example 1:
     Input: root = [1,2,2,3,4,4,3]
     Output: true

 Example 2:
     Input: root = [1,2,2,null,3,null,3]
     Output: false
 */

import Foundation

func isSymmetric(_ root: TreeNode?) -> Bool {
    return root?.left == root?.right
}

extension TreeNode: Equatable {
    public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        return lhs.val == rhs.val && lhs.left == rhs.right && lhs.right == rhs.left
    }
}
