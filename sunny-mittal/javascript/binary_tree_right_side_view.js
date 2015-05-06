function TreeNode(val) {
  this.val = val;
  this.left = this.right = null;
}

var rightSideView = function(root) {
    if (!root) return [];
    return lookFromRight([root]);
};

function lookFromRight(queue) {
    var nextQueue = [];
    if (!(queue && queue.length)) return [];
    var numbers = [];
    numbers.push(queue[0].val);
    var length = queue.length;
    for (var i = 0; i < length; i++) {
        var node = queue[i];
        if (node.right) nextQueue.push(node.right);
        if (node.left) nextQueue.push(node.left);
    }
    console.log(nextQueue.length);
    return numbers.concat(lookFromRight(nextQueue));
}
