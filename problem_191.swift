class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var nCopy = n
        var res = 0
        while nCopy != 0 {
            if nCopy & 1 != 0 {
                res += 1
            }
            nCopy >>= 1
        }
        return res
    }
}
