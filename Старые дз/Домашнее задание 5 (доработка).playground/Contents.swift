import UIKit

var str = "Hello, playground"



// Будет здорово, если попробуете привести пример таких классов или перечислений, которые будут использоваться в качестве raw value для других перечислений.

class Year : Equatable, ExpressibleByStringLiteral {
var currentYear = " 2020"

public static func == (lhs: Year, rhs: Year) -> Bool {
return (lhs.currentYear == rhs.currentYear)
}

    required public init(stringLiteral value: StringLiteralType) {
    currentYear = value + currentYear
    
    }
}

enum Summer : Year {
case june = "Июнь"
case july = "Июль"
case august = "Август"

}

var month1 = Summer.june
print(month1.rawValue.currentYear)
var month2 = Summer.july
print(month2.rawValue.currentYear)
var month3 = Summer.august
print(month3.rawValue.currentYear)


class PhoneCode: Equatable, ExpressibleByStringLiteral{
   
    var country = ""
    var code = 0
    
    public static func == (lhs: PhoneCode, rhs: PhoneCode) -> Bool {
        return (lhs.country == rhs.country && lhs.code == rhs.code)
    }
    public required init(stringLiteral value: String) {
        let components = value.components(separatedBy: ", ")
        if components.count == 2 {
            self.country = components[0]
            
            if let code = Int(components[1]) {
                self.code = code
            }
        }
    }

}

enum CountryCode: PhoneCode {
    case code1 = "Russia, +7"
    case code2 = "USA, +1"
    case code3 = "Thailand, +66"
}

// prints Jack
let country1 = CountryCode.code1
print(country1.rawValue.code)
print(country1.rawValue.country)
let country2 = CountryCode.code2
print(country2.rawValue.code)
print(country2.rawValue.country)
let country3 = CountryCode.code3
print(country3.rawValue.code)
print(country3.rawValue.country)


// Попробуете дать определения полиморфизму, инкапсуляции и наследованию?
// А также показать на текущих примерах, где применяются данные принципы.

//Полиморфизм - это свойство системы, которое позволяет работать с классами, объектами реализующими один и тот же протокол в едином стиле. То есть выполняется один и тот же метод для разных объектов. Пример:

protocol Moveable {
    func move() -> String
}


class Players: Moveable{
    var name1: String
    init(name1: String) {
        self.name1 = name1
    }
    func move() -> String{
        return "\(name1) двигается"
    }

}


class Monsters: Moveable {
    var name2: String
    init(name2: String) {
        self.name2 = name2
    }
    func move() -> String{
        return "\(name2) двигается"
    }
}

class Move{
    func move(objects: Moveable...) -> String{
        var result = ""
        for object in objects{
            result += object.move() + ";  "
        }
        return result
    }
}

protocol Break {
    func broken() -> String
}


class Objects: Break {
    var name3: String
    init(name3: String) {
        self.name3 = name3
    }
    func broken() -> String{
      return "\(name3) можно сломать"
    }
    
}


class InteractiveItems: Break {
    var name4: String
    init(name4: String) {
        self.name4 = name4
    }
    func broken() -> String{
      return "\(name4) можно сломать"
    }
}


class ObjectsItems{
    func broken(objects: Break...) -> String{
        var result = ""
        for object in objects{
            result += object.broken() + ";  "
        }
        return result
    }
}

var moveableObjects = Move()
var player = Players(name1: "Игрок")
var monster = Monsters(name2: "Монстр")
var monster1 = Monsters(name2: "Враг")
moveableObjects.move(objects: player, monster, monster1) // для объектов из разных классов выполняется один и тот же протокол

var object = ObjectsItems()
var weapon = InteractiveItems(name4: "Оружие")
var armor = InteractiveItems(name4: "Доспех")
var building = Objects(name3: "Дом")
var tree = Objects(name3: "Дерево")
object.broken(objects: weapon, armor, building, tree)



//Инкапсуляция - это свойство системы, которое позволяет объединять данные (свойства, методы) в класс. Данным можно присваивать уровни доступа - private, public, final, что будет определять можно ли изменять свойство, метод только изнутри этого класса или извне. Пример:

class Human {
   private var firstName = "Nadya"
   public var secondName = ""
   var age = 0
  
   
   func learn() {
    print ("\(firstName) \(secondName) учит Swift")
  }
 
 }
 
 
var human1 = Human()
//human1.firstName так как у свойства firstName указано private, то теперь нельзя менять это имя извне
human1.secondName = "Belozerova"
human1.age = 29
human1.learn()

//Наследование - это возможность одному классу наследовать все свойства, методы от другого (базового) класса. Наследуются только классы и наследовать можно только один класс. Пример:

class Box { // Box базовый класс
    var name: String
    init(name: String) {
        self.name = name
    }
    func take() -> String {
        return "\(name) можно взять"
    }
    
    func sold() -> String {
        return "\(name) можно продать"
    }
    
    func protect() -> String {
        return "\(name) может защищать"
    }
}

class Plant: Box { // Plant класс, который наследует функции из Box
    func heal() -> String{
        return "\(name) лечит"
    }
}

protocol Broken{
    func canBeBroken() -> String
}


class Weapon: Box, Broken { // Класс Weapon тоже наследует класс Box
    func attack() -> String{
        return "\(name) может атаковать врага"
    }
    func canBeBroken() -> String{
        return "\(name) может сломаться"
    }
    
    
}

class Armor: Box, Broken { //Класс Armor наследует класс Box
    func wear() -> String{
        return "\(name) можно носить"
    }
    func canBeBroken() -> String{
        return "\(name) может сломаться"
    }
}


var plant1 = Plant(name: "Волшебное растение")
plant1.take()
plant1.sold()
plant1.heal()
var weapon1 = Weapon(name: "Меч")
weapon1.attack()
weapon1.take()
weapon1.sold()
weapon1.protect()
weapon1.canBeBroken()
var armor1 = Armor(name: "Доспех")
armor1.wear()
armor1.sold()
armor1.protect()
armor1.canBeBroken()

