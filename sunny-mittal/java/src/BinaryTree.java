public class BinaryTree {
	static TreeNode root;
		
	public static void main(String[] args) {
		BinaryTree bt = new BinaryTree();
		int[] values = { 10, 5, 1, 8, 11, 12, 14 };
		for (int value : values) {
			root = bt.insert(value, root);
		}
		System.out.println(root.left.right.val);
	}
	
	public int maxDepth(TreeNode root) {
		if (root == null) return 0;
		int left = maxDepth(root.left);
		int right = maxDepth(root.right);
		
		return left > right ? left + 1 : right + 1;
	}
	
	public TreeNode insert(int x, TreeNode node) {
		if (node == null) node = new TreeNode(x);
		else if (x < node.val) node.left = insert(x, node.left);
		else node.right = insert(x, node.right);
		return node;
	}
}
