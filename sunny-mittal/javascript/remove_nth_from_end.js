var ListNode = require('./list_node');

var removeNthFromEnd = function(head, n) {
    var holder = new ListNode();
    holder.next = head;
    var p1 = holder, p2 = holder;
    for (var i = 0; i <= n; i++) p2 = p2.next;
    while (p2) {
        p1 = p1.next;
        p2 = p2.next;
    }
    p1.next = p1.next.next;
    return holder.next;
};
