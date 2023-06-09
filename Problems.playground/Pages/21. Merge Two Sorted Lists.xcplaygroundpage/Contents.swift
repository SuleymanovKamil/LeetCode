/*
 21. Merge Two Sorted Lists
 Easy

 You are given the heads of two sorted linked lists list1 and list2.
 Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists.
 Return the head of the merged linked list.

 Example 1:
     Input: list1 = [1,2,4], list2 = [1,3,4]
     Output: [1,1,2,3,4,4]

 Example 2:
     Input: list1 = [], list2 = []
     Output: []

 Example 3:
     Input: list1 = [], list2 = [0]
     Output: [0]
 */

import Foundation

let list1 = ListNode(1, ListNode(2, ListNode(4)))
let list2 = ListNode(1, ListNode(3, ListNode(4)))

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    if list1 == nil || list2 == nil {
        return list1 == nil ? list2 : list1
    }

    if list1!.val <= list2!.val {
        list1?.next = mergeTwoLists(list1?.next, list2)
        return list1
    } else {
        list2?.next = mergeTwoLists(list1, list2?.next)
        return list2
    }
}

mergeTwoLists(list1, list2)
