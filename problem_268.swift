class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var sortedNums = nums.sorted()
        let size = sortedNums.count
        for i in 1..<size {
            if sortedNums[i] - sortedNums[i - 1] > 1 {
                return sortedNums[i] - 1
            }
        }
        if sortedNums[0] == 0 {
            return sortedNums[size - 1] + 1
        }
        return 0
    }
}
