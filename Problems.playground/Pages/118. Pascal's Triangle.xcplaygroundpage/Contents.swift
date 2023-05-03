/*
 118. Pascal's Triangle
 Easy

 Given an integer numRows, return the first numRows of Pascal's triangle.
 In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:

 Example 1:
     Input: numRows = 5
     Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]

 Example 2:
     Input: numRows = 1
     Output: [[1]]
 */

import Foundation

func generate(_ numRows: Int) -> [[Int]] {
    var result: [[Int]] = []

    for row in 0 ..< numRows {
        var rowResult: [Int] = []
        for section in 0 ... row {
            if section == 0 || section == row {
                rowResult.append(1)
            } else {
                let value = result[row - 1][section - 1] + result[row - 1][section]
                rowResult.append(value)
            }
        }
        result.append(rowResult)
    }
    return result
}

generate(5)
