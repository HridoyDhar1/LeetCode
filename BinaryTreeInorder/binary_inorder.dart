class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.val, [this.left, this.right]);
}

List<int> inorderTraversal(TreeNode? root) {
  List<int> result = [];

  void traverse(TreeNode? node) {
    if (node == null) return;

    traverse(node.left);      // Left
    result.add(node.val);     // Root
    traverse(node.right);     // Right
  }

  traverse(root);
  return result;
}
