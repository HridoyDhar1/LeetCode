class TreeNode{
    int val
;
TreeNode?left;
TreeNode?right;
TreeNode([this.val=0,this.left,this.right]);
}
class Solution{
    bool isSameNode(TreeNode?p,TreeNode?q){
        if(p==null&&q==null) return true;
        if(p==null||q==null) return false;
        if(p.val!=q.val) return false;
        return isSameNode(p.left,q.left)&&isSameNode(q.right,p.right);
    }
}