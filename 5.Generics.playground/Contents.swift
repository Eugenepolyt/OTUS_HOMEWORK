import UIKit

protocol StackProtocol {
    associatedtype Item
    
    var stack: [Item] { get set }
    
}

extension StackProtocol {
    
    mutating func push(item: Item) {
        stack.append(item)
    }
    
    mutating func pop() -> Item? {
        stack.isEmpty ? nil : stack.removeFirst()
    }
    
    func peek() -> Item? {
        stack.first
    }
    
    func printStack() {
        print(stack)
    }
}

class Stack<T>: StackProtocol {

    typealias Item = T
    
    var stack = [Item]()
    
}

var stack = Stack<String>()
stack.push(item: "OTUS")
stack.printStack()
stack.push(item: "IOS")
stack.printStack()
stack.pop()
stack.printStack()
print(stack.peek())
stack.pop()
print(stack.peek())

