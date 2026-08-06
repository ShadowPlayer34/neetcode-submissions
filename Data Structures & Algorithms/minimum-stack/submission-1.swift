class MinStack {

    private var stack: [Int]
    private var minValue: Int = Int.max

    init() {
        stack = []
    }

    func push(_ val: Int) {
        stack.append(val)
        minValue = min(minValue, val)
    }

    func pop() {
        let val = stack.removeLast()        
        if val == minValue {
            minValue = Int.max
        }
        minValue = stack.min() ?? minValue
    }

    func top() -> Int {
        stack.last ?? 0
    }

    func getMin() -> Int {
        minValue
    }
}
