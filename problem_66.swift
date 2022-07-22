class Solution {
    func plusOne(_ digit: [Int]) -> [Int] {
        var digits = digit
        var i = digits.endIndex - 1
        print(i)
        while i != digits.startIndex - 1 {
            if digits[i] + 1 <= 9 {
                digits[i] += 1
                break
            }
            digits[i] = 0
            i -= 1
        }
        if digits[0] == 0 {
            digits.insert(1, at : 0)
        }
        return digits
    }
}

var sol = Solution()
var dig = [9]
dig = sol.plusOne(dig)
print(dig)