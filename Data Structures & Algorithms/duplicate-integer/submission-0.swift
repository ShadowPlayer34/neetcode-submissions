class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var storedNumbers = Set<Int>()

        for num in nums {
            if storedNumbers.contains(num) {
                return true
            }

            storedNumbers.insert(num)
        }

        return false
    }
}
