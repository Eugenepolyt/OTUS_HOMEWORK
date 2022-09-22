import UIKit

// Number 1

extension Array where Element: Numeric & Comparable {
    
    mutating func swapMaxMin() {
        
        guard let min = self.min(), let max = self.max() else {
            return
        }
        
        let maxIndex = self.firstIndex(of: max)!
        let minIndex = self.firstIndex(of: min)!
        
        self.swapAt(maxIndex, minIndex)
        
    }
    
}

var arrayInt = [1, -1, 2, -54, 22, 3, 4, 105]
arrayInt.swapMaxMin()
var arrayDouble = [22.4, -999, 1.4, 0, 999, 8, -1]
arrayDouble.swapMaxMin()

// Number 2

func findCommonElementsIn(firstArray: [Character], secondArray: [Character]) -> Set<Character> {
    Set(firstArray).intersection(secondArray)
}

var arrayChar1: [Character] = ["a", "b", "c", "d"]
var arrayChar2: [Character] = ["c", "d", "e", "f", "g"]

findCommonElementsIn(firstArray: arrayChar1, secondArray: arrayChar2)

// Number 3

var dictionary = ["User" : "123456qwertyu", "User2": "123qwe", "User3": "12345678910"]

for (key, value) in dictionary {
    if value.count > 10 {
        print("User \(key) has password: \(value)")
    }
}
