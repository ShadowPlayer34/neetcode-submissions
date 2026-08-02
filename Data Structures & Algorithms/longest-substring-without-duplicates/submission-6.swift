class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        guard !s.isEmpty else { return 0 }
        guard s.count > 1 else { return 1 }
        
        var left = 0
        let arr = Array(s)
        var seen = Set<Character>()
        var maxV = 0

        for right in 0..<s.count {
            while seen.contains(arr[right]) {
                seen.remove(arr[left])
                left += 1
            }

            seen.insert(arr[right])
            maxV = max(maxV, (right - left) + 1)
        }

        return maxV
    }
}
