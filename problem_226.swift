/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */

class Solution {
    func invertTreeHelper(_ first: inout TreeNode?, _ second: TreeNode?) {
        guard let second = second else { return }
        first = TreeNode(second.val)
        invertTreeHelper(&first!.left, second.right)
        invertTreeHelper(&first!.right, second.left)
    }
    
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        var newTreeNode: TreeNode?
        invertTreeHelper(&newTreeNode, root)
        return newTreeNode
    }
}
