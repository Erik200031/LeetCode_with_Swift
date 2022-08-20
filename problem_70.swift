class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n <= 1 {
            return 1
        }
        if n == 2 {
            return 2
        }
        var f = 1
        var s = 2
        var c = 3
        for i in 3...n {
            c = f + s
            f = s
            s = c
        }
        return c
    }
}
