class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var size = nums.count
        var countOfZero = 0
        var i = 0
        while i < size {
            if nums[i] == 0 {
                nums.remove(at: i)
                countOfZero += 1
                size = nums.count
                continue
            }
            i += 1
        }
        
        while countOfZero != 0 {
            nums.append(0)
            countOfZero -= 1
        }
    }
}
