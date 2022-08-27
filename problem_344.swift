class Solution {
    func reverseString(_ s: inout [Character]) {
        var startIdx = 0
        var endIdx = s.count - 1
        while startIdx <= endIdx {
            let tmp = s[startIdx] 
            s[startIdx] = s[endIdx]
            s[endIdx] = tmp
            startIdx += 1
            endIdx -= 1
        }
    }
}

//brute force

class Solution {
    func reverseString(_ s: inout [Character]) {
        s = s.reversed()
    }
}
