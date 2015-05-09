/** Not a leetcode problem (that I know of). The problem asks to 
enumerate all possible paths a frog can use to cross a river
given the following conditions (diagram may help):

diagram:
  O | O O O O O O ... | O

- the frog must land directly on the last stone
- the frog must start on the first stone
- the frog can only jump one or two stones

For simplicity, I considered the starting and ending stones as the
first and last elements of the array, respectively, so naturally, all
solutions must start with `0` and end with `arr.length - 1`. I also opted
to print out a successful path when it's found rather than adding it to
some global `paths` array */

function frogger(stones, pos, path) {
  if (pos >= stones.length) return;
  if (pos === stones.length - 1) {
    console.log(path.concat(stones[pos]));
    return;
  }
  var current = stones[pos];
  frogger(stones, pos + 1, path.concat(current));
  frogger(stones, pos + 2, path.concat(current));
}
