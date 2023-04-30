/*
 111. Minimum Depth of Binary Tree
 Easy
 
 Given a binary tree, find its minimum depth.
 The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.
 Note: A leaf is a node with no children.

 Example 1:
     Input: root = [3,9,20,null,null,15,7]
     Output: 2

 Example 2:
     Input: root = [2,null,3,null,4,null,5,null,6]
     Output: 5
 */

import Foundation

func minDepth(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 }
    var queue: [TreeNode] = [root]
    var result = 0

    while !queue.isEmpty {
        result += 1
        for _ in 0..<queue.count {
            let node = queue.removeFirst()

            if node.left == nil && node.right == nil {
               return result
            }

            if let left = node.left {
                queue.append(left)
            }

            if let right = node.right {
                queue.append(right)
            }
        }
    }

    return result
}

//minDepth(TreeNode([3,9,20,nil,nil,15,7]))
minDepth(TreeNode([2,nil,3,nil,4,nil,5,nil,6]))
//minDepth(TreeNode([1,2,3,4,5]))


func minDepthRecursive(_ root: TreeNode?) -> Int {
    if  root == nil { return 0 }
    let left = minDepth(root?.left)
    let right = minDepth(root?.right)

    if left == 0 || right == 0 { return 1 + max(left, right) }

    return 1 + min(left, right)
}
