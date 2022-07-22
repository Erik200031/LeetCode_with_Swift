class Solution {
    func binarySearch(_ numbers: [Int], _ start: Int, _ end: Int, _ target: Int) -> Int
    {
        var mid = start
        if start <= end {
            if numbers[mid] == target {
                return mid
            }
            if target < numbers[mid] {
                return self.binarySearch(numbers, start, mid - 1, target)
            }
            if target > numbers[mid] {
                return self.binarySearch(numbers, mid + 1, end, target)
            }
        }
        return mid
    }
    
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        return binarySearch(nums, nums.startIndex, nums.endIndex - 1, target)
    }
}