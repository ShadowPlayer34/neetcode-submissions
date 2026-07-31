class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        guard !nums.isEmpty && nums.count > 1 else { return [] }
        var dict = [Int: Int]()

        for (idx, num) in nums.enumerated() {
            if let storedIndex = dict[target - num] {
                return [storedIndex, idx]
            }

            dict[num] = idx
        }

        return []
    }
}
