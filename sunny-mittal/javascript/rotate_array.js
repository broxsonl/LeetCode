var rotate = function(nums, k) {
    var len = nums.length;
    k %= len;
    if (k !== 0) [].push.apply(nums, nums.splice(0, len - k));
};
