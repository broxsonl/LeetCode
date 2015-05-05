var hasCycle = function(head) {
    if (head) {
        var p1 = head, p2 = head;
        while (p2) {
            try {
                p1 = p1.next;
                p2 = p2.next.next;
            } catch (e) {
                return false;
            }
            if (p1 === p2) return true;
        }
    }
    return false;
};
