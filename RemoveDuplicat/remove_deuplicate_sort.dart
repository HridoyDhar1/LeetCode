class Solution{
  ListNode?deleteDuplicates(ListNode?head){
    if(head==null)return null;
    ListNode?a=head;
    while(a!=null&&a.next!=null){
      if(a.val==a.next!.val){
        a.next=a.next!.next;
      }else{
        a=a.next;
      }
    }
    return head;
  }
}
// Recursively call the function on the next node.
// After recursion, check if the current node and the next node have the same value.
// If yes, skip the next node by updating pointers.
// Return the head after removing duplicates.
