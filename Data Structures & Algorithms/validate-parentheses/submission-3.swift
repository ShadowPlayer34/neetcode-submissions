class Solution {
    func isValid(_ s: String) -> Bool {
        guard s.count > 1 else { return false }
        let dict: [Character: Character] = [")": "(", "]": "[", "}": "{"]
        var opened = Array<Character>()

        for ch in s {
            if let openedCH = dict[ch] {
                guard !opened.isEmpty else { return false }
                let lastItem = opened.removeLast()
                if lastItem != openedCH {
                    return false
                }
                continue
            }

            opened.append(ch)
        }

        return opened.isEmpty
    }
}
