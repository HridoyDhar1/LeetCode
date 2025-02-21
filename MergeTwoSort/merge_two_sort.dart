class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
if (list1 == null) return list2;
    if (list2 == null) return list1;

    if (list1.val < list2.val) {
      list1.next = mergeTwoLists(list1.next, list2);
      return list1;
    } else {
      list2.next = mergeTwoLists(list1, list2.next);
      return list2;
    }
    
  }
}


// If list1 is null, return list2 because there is nothing to merge.
// If list2 is null, return list1 for the same reason.
// Compare the current node values of list1 and list2:
// If list1.val is smaller, attach list1 to the merged list.
// Set list1.next to the result of merging list1.next with list2 (recursive call).
// Return list1 as the new head.
// Otherwise, attach list2 to the merged list.
// Set list2.next to the result of merging list1 with list2.next (recursive call).
// Return list2 as the new head.