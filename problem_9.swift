class solution {
    func rev(num: Int, rev: Int) -> Int {
        if num > 0 {
            return self.rev(num : num / 10, rev : rev * 10 + num % 10)
        }
        return rev
    }
    func isPalindrome(_ x: Int) -> Bool {
        if rev(num: x, rev : 0) == x {
            return true
        }
        return false
    }
}

var sol = solution()
let number = 121
print(sol.isPalindrome(number))