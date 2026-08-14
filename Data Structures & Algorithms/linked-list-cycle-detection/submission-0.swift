/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        var fast = head?.next?.next
        var slow = head?.next

        while fast != nil {
            if fast?.val == slow?.val {
                return true
            }

            slow = slow?.next
            fast = fast?.next?.next
        }

        return false
    }
}
