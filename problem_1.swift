class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var beSorted = nums.sorted()
        var i = 0
        var j = beSorted.count - 1
        while i <= j {
            if (beSorted[i] + beSorted[j]) == target {
                var ii = 0
                var jj = 0
                while ii < nums.count {
                    if nums[ii] == beSorted[i] {
                        let res1 = ii
                        if beSorted[i] == beSorted[j] {
                            jj = ii + 1
                        }
                        while jj < nums.count {
                            if nums[jj] == beSorted[j] {
                                return [res1, jj]
                            }
                            jj += 1
                        }
                    } 
                    ii += 1
                }
            } else if (beSorted[i] + beSorted[j]) < target {
                i += 1
            } else {
                j -= 1
            }
        }
        return []
    }
}
