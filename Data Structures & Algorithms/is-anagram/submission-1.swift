class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        var dictChar = [Character: Int]()

        for char in s {
            dictChar[char, default: 0] += 1
        }

        for char in t {
            dictChar[char, default: 0] -= 1
        }

        for value in dictChar.values {
            if value < 0 {
                return false
            }
        }

        return true
    }
}
