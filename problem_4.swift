class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let res = (nums1 + nums2).sorted()
        if res.count % 2 == 0 {
            return Double(res[res.count / 2 - 1] + res[res.count / 2]) / 2.0
        }
        return Double(res[res.count / 2])
    }
}
