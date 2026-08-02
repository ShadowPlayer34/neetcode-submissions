class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard !prices.isEmpty && prices.count > 1 else { return 0 }
        var left = 0
        var right = 1
        var maxProfit = 0

        while right < prices.count {
            if prices[right] > prices[left] {
                maxProfit = prices[right] - prices[left] > maxProfit ? prices[right] - prices[left] : maxProfit
            } else {
                left = right
            }
            right += 1
        }

        return maxProfit
    }
}
