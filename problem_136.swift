class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var res = nums[0]
        let size = nums.count
        for i in 1..<size {
            res ^= nums[i]
        }
        return res
    }
}
