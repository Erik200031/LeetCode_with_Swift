/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        if head == nil || (head != nil && head?.next == nil) {
            return false
        }
        var slow: ListNode? 
        slow = head
        var fast: ListNode? 
        fast = head
        while slow != nil && fast != nil && fast?.next != nil {
            slow = slow?.next;
            fast = fast?.next?.next;
            if slow === fast {
              return true
            }
        }
        return false   
    }
}
