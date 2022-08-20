class Solution {
    func merge(_ arr1: inout [Int], _ m: Int, _ arr2: [Int], _ n: Int) {
        var index1 = 0
        var index2 = 0
        var count = n
        while count != 0 {
            arr1.removeLast()
            count -= 1
        }
        while index1 < arr1.count && index2 < arr2.count {
            if arr1[index1] > arr2[index2] {
                arr1.insert(arr2[index2], at: index1)
                index2 += 1
            } else {
                index1 += 1
            }
        }

        while index2 < arr2.count {
            arr1.append(arr2[index2])
            index2 += 1
        }
        
    }
}
