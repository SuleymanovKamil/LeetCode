

import Foundation

func bubleSort(_ nums: [Int]) -> [Int] {
    var sortedNums = nums
    for i in 0 ..< sortedNums.count {
        let index = (sortedNums.count - 1) - i
        for j in 0 ..< index {
            let number = sortedNums[j]
            let nextNumber = sortedNums[j + 1]

            if number > nextNumber {
                sortedNums[j] = nextNumber
                sortedNums[j + 1] = number
            }
        }
    }

    return sortedNums
}
