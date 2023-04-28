/*
 Easy

 Companies
 Given the head of a sorted linked list, delete all duplicates such that each element appears only once. Return the linked list sorted as well.

 Example 1:
     Input: head = [1,1,2]
     Output: [1,2]

 Example 2:
     Input: head = [1,1,2,3,3]
     Output: [1,2,3]
 */

import Foundation

let list = ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(3)))))

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    if head == nil { return head }

    if head!.next != nil {
        if head!.val == head!.next!.val {
            return deleteDuplicates(head!.next)
        } else {
            return deleteDuplicates(head!.next!.next)
        }
    }

    return head
}


func deleteDuplicates2(_ head: ListNode?) -> ListNode? {
    var node = head
    while let next = node?.next {
        node!.val == next.val ? (node!.next = next.next) : (node = next)
    }
    return head
}


deleteDuplicates(list)
