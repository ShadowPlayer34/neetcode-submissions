class Solution {
    func isPalindrome(_ s: String) -> Bool {
        guard !s.isEmpty else { return false }
        guard s.count != 1 else { return true }
        var start = 0
        var end = s.count - 1
        let arrStr = Array(s.lowercased())

        while start < end {
            guard arrStr[start].isNumber || arrStr[start].isLetter else { start += 1; continue }
            guard arrStr[end].isNumber || arrStr[end].isLetter else { end -= 1; continue }
            guard arrStr[start] == arrStr[end] else { return false }
            start += 1
            end -= 1
        }

        return true
    }
}
