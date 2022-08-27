/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var start = 0;
        var end = n;
        var mid = start + (end - start) / 2
        while start <= end {
            mid = start + (end - start) / 2
            if isBadVersion(mid) {
                end = mid - 1
            } else {
                start = mid + 1
            }
        }
        if !isBadVersion(mid) {
            return mid + 1
        }
        return mid
    }
}
