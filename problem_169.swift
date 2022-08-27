class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var candidate = nums[0]
        var count = 1
        for i in 1..<nums.count {
            if count == 0 {
                candidate = nums[i]
            }
            if nums[i] == candidate {
                count += 1
            } else {
                count -= 1
            }
        }
        return candidate
    }
}
