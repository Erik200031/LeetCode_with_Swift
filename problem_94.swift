public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}
 
class Solution {
    func inorder(_ root: TreeNode?, _ res: inout [Int]) -> [Int] {
        if root == nil {
            return res
        }
        inorder(root!.left, &res)
        res.insert(root!.val, at: res.count)
        inorder(root!.right, &res)
        return res
    }
    
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var res : [Int] = .init()
        return self.inorder(root, &res);
    }
}