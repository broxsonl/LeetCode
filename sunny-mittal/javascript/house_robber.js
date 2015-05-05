var rob = function(nums) {
    return Math.max.apply(null, nums.reduce(function(sums, num) {
        return [num + sums[1], Math.max(sums[0], sums[1])]
    }, [0, 0]));
};
