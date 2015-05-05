var ListNode = require('./list_node');

var removeElements = function(head, val) {
    var holder = new ListNode();
    holder.next = head;
    var p1 = holder, p2 = holder.next;
    while (p2) {
        if (p2.val === val) {
            p1.next = p2.next;
            p2 = p2.next;
        } else {
            p1 = p1.next;
            p2 = p2.next;
        }
    }
    return holder.next;
};
