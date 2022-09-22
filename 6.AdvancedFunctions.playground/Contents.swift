import UIKit

//1
func printSomething(closure: () -> ()) {
    closure()
}

printSomething {
    print("OTUS lesson")
}

//2

func sortedAndFiltered(array: [Int], sortBy: (Int, Int) -> Bool, filterBy: (Int) -> Bool) -> [Int] {
    
    var result = array
    
    for i in result.indices {
        for j in 0..<result.count - i - 1 {
            if sortBy(result[j], result[j + 1]) {
                result.swapAt(j, j + 1)
            }
        }
        
    }
    
    var counter = 0
    
    while true {
        
        if counter == result.count {
            break
        }
        
        if !filterBy(result[counter]) {
            result.remove(at: counter)
            continue
        }
        counter += 1
        
    }
        

    
    return result
}


var array = [1, 5, 4, -1, 2, 44, -24, 4124, 1, 4, -5, -665]

var arr = sortedAndFiltered(array: array) {
    $0 < $1
} filterBy: {
    $0 > 0
}

// 3



func autoclosure(closure: @autoclosure () -> String) {
    
    print(closure())
    
}

autoclosure(closure: ["otus", "homework"].joined(separator: " "))

// 4

func generateString(symbol: String) -> () -> String {
    
    var string = ""
    
    func addSymbol() -> String {
        
        string += symbol
        return string
        
    }
    
    return addSymbol
    
}


var bString = generateString(symbol: "B")
bString()
bString()
bString()

// 5

func setAllToZero<T>(array: [T]) -> [T] where T: Numeric {
    
    var result = [T]()
    
    for _ in array {
        result.append(0)
    }
    
    return result
    
}

setAllToZero(array: [1, 3, 5, 6])
setAllToZero(array: [1.0, 2, 3, 5.6])
