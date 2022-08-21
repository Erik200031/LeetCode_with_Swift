class Solution {
    
    func reverse(_ x: Int) -> Int {
        var flag = false
        var tmp = x
        if x < 0 {
            flag = true
            tmp *= -1
        }
        var res = 0
        var revNum = 0
        while tmp > 0 {
            revNum = revNum * 10 + tmp % 10
            tmp = tmp / 10
        } 
        res = revNum
        if res > INT_MAX {
            return 0
        }
        if flag {
            res *= -1
        }
        return res
    }
}
