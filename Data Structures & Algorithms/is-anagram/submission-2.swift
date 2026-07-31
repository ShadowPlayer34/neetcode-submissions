class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        var dictS = [Character: Int]()
        var dictT = [Character: Int]()

        var s = Array(s)
        var t = Array(t)
        
        for i in 0..<s.count {
            dictS[s[i], default: 0] += 1
            dictT[t[i], default: 0] += 1
        }

        return dictS == dictT
    }
}
