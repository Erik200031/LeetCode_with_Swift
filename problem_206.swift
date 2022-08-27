/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    
    func reverseListHelper(_ head: inout ListNode?) -> ListNode? {
        if (head == nil) || (head != nil && head!.next == nil) {
            return head
        }
        var tmp = reverseListHelper(&head!.next)
        head!.next!.next = head
        head!.next = nil
        return tmp
    }
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head != nil && head!.next == nil {
            return head
        }
        var newListNode: ListNode?
        newListNode = ListNode()
        var cur1 = newListNode
        var cur2 = head
        repeat {
            cur1!.val = cur2!.val
            cur1!.next = ListNode()
            cur1 = cur1!.next
            cur2 = cur2!.next
        } while cur2 != nil && cur2!.next != nil
        cur1!.val = cur2!.val
        newListNode = reverseListHelper(&newListNode)
        return newListNode
    }
}
