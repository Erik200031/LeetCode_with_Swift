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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var res: ListNode?
        var carry: Bool = false
        return addTwoNumbersHelper(l1, l2, &res, &carry)
    }
    
    func addTwoNumbersHelper(_ l1: ListNode?, _ l2: ListNode?, _ res: inout ListNode?, _ carry: inout Bool) -> ListNode? {
          if l1 == nil && l2 == nil
        { return carry ? ListNode(1) : nil }
        if l1 == nil {
            if carry {
                let tmp = l2!.val
                l2!.val = l2!.val + 1 == 10 ? 0 : l2!.val + 1
                carry = tmp + 1 == 10 ? true : false
                res = ListNode(l2!.val, addTwoNumbersHelper(l1, l2!.next, &res, &carry))
                return res
            }
            return l2
        }
        if l2 == nil {
            if carry {
                let tmp = l1!.val
                l1!.val = l1!.val + 1 == 10 ? 0 : l1!.val + 1
                carry = tmp + 1 == 10 ? true : false
                res = ListNode(l1!.val, addTwoNumbersHelper(l1!.next, l2, &res, &carry))
                return res
            }
            return l1
        }
        var nextCarry = (l1!.val + l2!.val + (carry ? 1 : 0)) >= 10 ? true : false
        res = ListNode(
            (l1!.val + l2!.val + (carry ? 1 : 0)) >= 10 ?
            ((l1!.val + l2!.val + (carry ? 1 : 0)) % 10): (l1!.val + l2!.val + (carry ? 1 : 0)),
            addTwoNumbersHelper(l1!.next, l2!.next, &res, &nextCarry)
                
        )
        return res
    }
}
