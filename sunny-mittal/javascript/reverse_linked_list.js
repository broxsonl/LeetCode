var reverseList = function(head) {
    var tail = null;
    if (head) {
        tail = head;
        head = head.next;
        tail.next = null;
        while (head) {
            var next = head.next;
            var temp = head;
            temp.next = tail;
            tail = temp;
            head = next;
        }
    }
    return tail;
};
