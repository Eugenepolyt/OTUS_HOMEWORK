import UIKit

// №1

func sumTwoInt(a: Int, b: Int) -> Int {
    a + b
}

// №2

func tupleToString(tuple: (Int, String)) {
    print("\(tuple.1) \(tuple.0)")
}

// №3

func closureIntFunc(number: Int, closure: (() -> ())?) {
    if number > 0 {
        if let closure = closure {
            closure()
        }
    }
}


closureIntFunc(number: 5, closure: { print("Lesson 5") })

// №4

func isLeapYear(year: Int) -> Bool {
    year % 4 == 0 && year % 100 != 0 || year % 400 == 0
}


