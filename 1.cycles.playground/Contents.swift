// homework lesson 4

var randomArray = [Int]()

for _ in 1...200 {
    randomArray.append(Int.random(in: 1...500))
}

func firstRepeatedIndexOf(array: [Int]) -> Int {
    
    var dict = [Int:Int]()

    for i in array.indices {
        
        if let value = dict[array[i]] {
            return value
        }
        
        dict[array[i]] = i
        
    }
    
    return -1
    
}



firstRepeatedIndexOf(array: [3, 4, 5, 6, 8, 78, 67, 4, 88])
firstRepeatedIndexOf(array: randomArray)
