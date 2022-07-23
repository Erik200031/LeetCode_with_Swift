class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }
        var i = 0
        var end = nums.count
        while i < end - 1 {
            if nums[i] == nums[i + 1] {
                nums.remove(at : i)
                end = nums.count
            } else {
                i += 1
            }
        }
        return nums.count
    }
}