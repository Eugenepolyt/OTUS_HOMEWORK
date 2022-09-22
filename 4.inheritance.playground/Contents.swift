import UIKit

public class Pet: CustomStringConvertible {
    
    public var description: String {
        "Pet"
    }
    
    private var nickname: String
    private var age: Int
    
    init(nickname: String, age: Int) {
        self.nickname = nickname
        self.age = age
    }
    
    public func getNickname() -> String {
        nickname
    }
    
    public func getAge() -> Int {
        age
    }
    
    public func increaseAge(by count: Int) {
        age += count
    }
    
    public func getSound() -> String {
        fatalError("Must Override")
    }
    
}

public class Cat: Pet {
    
    override public var description: String {
        "Cat"
    }
    
    private var breed: String
    
    init(nickname: String, age: Int, breed: String) {
        self.breed = breed
        super.init(nickname: nickname, age: age)
    }
    
    override public func getSound() -> String {
        "Meuw"
    }
    
}

public class Dog: Pet {
    
    override public var description: String {
        "Dog"
    }
    
    private var breed: String
    
    init(nickname: String, age: Int, breed: String) {
        self.breed = breed
        super.init(nickname: nickname, age: age)
    }
    
    override public func getSound() -> String {
        "Gav"
    }
    
}

public class Rabbit: Pet {
    override public var description: String {
        "Rabbit"
    }
    
    override public func getSound() -> String {
        "*screech*"
    }
}


let cat1 = Cat(nickname: "Simba", age: 2, breed: "Persian")
let cat2 = Cat(nickname: "Mufassa", age: 5, breed: "Maine Coon")
let dog = Dog(nickname: "Sharik", age: 24, breed: "Bulldog")
let rabbit = Rabbit(nickname: "Robbi", age: 12)

let pets = [cat1, cat2, dog, rabbit]

pets.forEach {
    print("\($0) with nickname: \($0.getNickname()) \nAge: \($0.getAge())")
    print("Sound of pet: \($0.getSound())")
    print()
}
