class Solution {
    
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        func merge(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
            var index1 = 0
            var index2 = 0
            var indexOfMerged = 0
            var res: [Int] = []
            while index1 < arr1.count && index2 < arr2.count {
                if arr1[index1] <= arr2[index2] {
                    res.append(arr1[index1])
                    index1 += 1
                } else {
                    res.append(arr2[index2])
                    index2 += 1
                }
                indexOfMerged += 1
            }
            
            while index1 < arr1.count {
                res.append(arr1[index1])
                index2 += 1
                indexOfMerged += 1
            }

            while index2 < arr2.count {
                res.append(arr2[index2])
                index2 += 1
                indexOfMerged += 1
            }
            return res
        }
        let merged = merge(nums1, nums2)
        
        if merged.count % 2 == 0 {
            return Double(merged[merged.count / 2 - 1] + merged[merged.count / 2]) / 2.0
        }
        return Double(merged[merged.count / 2])
    }
}

//brute force
class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let res = (nums1 + nums2).sorted()
        if res.count % 2 == 0 {
            return Double(res[res.count / 2 - 1] + res[res.count / 2]) / 2.0
        }
        return Double(res[res.count / 2])
    }
}
