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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var outputHead: ListNode? = nil
        var outputTail: ListNode? = nil
        var head1 = list1
        var head2 = list2
        var result: [Int] = []

        while head1 != nil && head2 != nil {
            if head1!.val > head2!.val {
                result.append(head2!.val)
                head2 = head2!.next
            } else if head1!.val < head2!.val { 
                result.append(head1!.val)
                head1 = head1!.next
            } else {
                result.append(head1!.val)
                head1 = head1!.next
            }
        } 
        while head1 != nil {
            result.append(head1!.val)
            head1 = head1!.next
        }

        while head2 != nil {
            result.append(head2!.val)
            head2 = head2!.next
        }

        for num in result {
            if outputHead == nil {
                outputHead = .init(num)
                outputTail = outputHead
            } else {
                outputTail?.next = .init(num)
                outputTail = outputTail?.next
            }
        }

        return outputHead
    }
}
