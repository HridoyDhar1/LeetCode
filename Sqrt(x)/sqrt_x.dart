class Solution {
  int mySqrt(int x) {
    if(x<2) return x;
    int a =x;
    while(a>x~/a){
        a=(a+x~/a)~/2;
    }
    return a;
  }
}
// If x is 0 or 1, just return it directly since the square root is the number itself.
// Start with an initial guess a equal to x.
// x ~/ a is integer division ( x / a but rounded down).
// We check: is our guess a too large?
// If a > x ~/ a, then a * a > x, so guess is too high.
// Using integer division (~/) to stay in whole numbers.
// Once the guess stabilizes and no longer overshoots, return it.
// This will be the floor of the actual square root of x.