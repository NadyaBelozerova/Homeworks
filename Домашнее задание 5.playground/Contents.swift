import UIKit

var str = "Hello, playground"

//Задание 1. В чем различие между классом и объектом?
/*
 Класс это то, что описывает объект, содержит в себе набор свойств, методов, по которым потом как по шаблону создается объект. Объект это экземпляр класса. Например:
 Это класс:
 
 class Human {
   var firstName = ""
   var secondName = ""
   var age = 0
  
   
   func learn() {
    print ("\(firstName) \(secondName) учит Swift")
  }
 
 }
 
 
 //Это объект:
var human1 = Human()
human1.firstName = "Nadya"
human1.secondName = "Belozerova"
human1.age = 29
human1.learn()
 */

//Задание 2

protocol A{

    func a()

}



protocol B{

    func b()

}



extension B{  //Расширение для протокола B

     func b(){

        print("extB")

    }

}



class C: A{  //Класс C, который реализует протокол A

    func a() {

        print("A")

    }

    

    func c(){

        print("C")

    }

}



class D: C, B{  //Класс D, который наследует класс C и реализует протокол B

    func b() {

        print("B")

    }

    func d(){

        print("D")

    }

}



let v1: A = D() // В этом задании мне не совсем понятно про "v1: A". Так было бы все понятно "let v1 = D()", а так "let v1: A = D()" не совсем
v1.a()

//let v2: B = C()  Не сокмпилируется, потому что С не реализует протокол B?
//v2.c()

//let v3: C = D() Не скомпилируется, потому что у класса С нет функции d?
//v3.d()

let v4: D = D()
v4.a()


//Задание 3
//#1
class Box {
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

class Plant: Box {
    func heal() -> String{
        return "\(name) лечит"
    }
}

protocol Broken{
    func canBeBroken() -> String
}


class Weapon: Box, Broken {
    func attack() -> String{
        return "\(name) может атаковать врага"
    }
    func canBeBroken() -> String{
        return "\(name) может сломаться"
    }
    
    
}

class Armor: Box, Broken {
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




//#2
protocol Moveable {
    func move()
}

protocol CanDie {
    func die()
    func canBeTreated()
}

protocol Fight {
    func fight()
    func defend()
}

protocol Attack {
    func attack()
}

class Players: Moveable, CanDie {
    var name1: String
    init(name1: String) {
        self.name1 = name1
    }
    func move() {
        print ("\(name1) двигается")
    }
    func die() {
        print ("\(name1) может умереть")
    }
    
    func canBeTreated() {
        print ("\(name1) может лечиться")
    }
}

extension Players: Fight {
    func fight() {
        print ("\(name1) может драться")
    }
    func defend() {
        print ("\(name1) может защищаться")
    }
}

class Monsters: Moveable, CanDie {
    var name2: String
    init(name2: String) {
        self.name2 = name2
    }
    func move() {
        print ("\(name2) двигается")
    }
    func die() {
           print ("\(name2) может умереть")
       }
    func canBeTreated() {
        print ("\(name2) может лечиться")
    }
}

extension Monsters: Attack {
    func attack() {
        print("\(name2) может нападать")
    }
}


protocol Break {
    func broken()
}


class Objects: Break {
    var name3: String
    init(name3: String) {
        self.name3 = name3
    }
    func broken() {
       print ("\(name3) можно сломать")
    }
    
}

class InteractiveItems {
    var name4: String
    init(name4: String) {
        self.name4 = name4
    }
}

protocol TakeItem {
    func take()
    func putInBox()
}

extension InteractiveItems: TakeItem {
    func take() {
        print("\(name4) можно взять")
    }
    func putInBox() {
        print("\(name4) можно положить в сундук")
    }
}

var player = Players(name1: "Игрок")
player.move()
player.canBeTreated()
player.die()
player.fight()
var monster = Monsters(name2: "Монстр")
monster.move()
monster.canBeTreated()
monster.die()
monster.attack()
var object = Objects(name3: "Дерево")
object.broken()
var object1 = Objects(name3: "Дом")
object1.broken()
var item = InteractiveItems(name4: "Оружие")
item.take()
item.putInBox()
var item1 = InteractiveItems(name4: "Лекарство")
item1.take()
item1.putInBox()



//#3
// Это задание я попыталась сделать с расширениями, но думаю, что должно как-то проще решаться((( что делать, если будет не 3, а 30 моделей
class Model1 {
    var nameOfCar: String
    var photo: String
    init(nameOfCar: String, photo: String) {
        self.nameOfCar = nameOfCar
        self.photo = photo
    }

}


extension Model1 {
    
    var standart: String {
        let equipment = "Стандарт"
        let price = 2000000
        let color = "Белый"
        let engine = 1.6
        return "Комплектация: \(equipment), цена: \(price), цвет: \(color), двигатель: \(engine)"
    }
    
    
    
    var comfort: String {
        let equipment = "Комфорт"
        let price = 3000000
        let color = "Серый"
        let engine = 2.0
        return "Комплектация: \(equipment), цена: \(price), цвет: \(color), двигатель: \(engine)"
    }
    
    var full: String {
        let equipment = "Полная"
        let price = 4000000
        let color = "Черный"
        let engine = 3.2
       return "Комплектация: \(equipment), цена: \(price), цвет: \(color), двигатель: \(engine)"
    }
}

class Model2 {
    var nameOfCar: String
    var photo: String
    init(nameOfCar: String, photo: String) {
        self.nameOfCar = nameOfCar
        self.photo = photo
    }
}

extension Model2 {
    var standart: String {
        let equipment = "Стандарт"
        let price = 1500000
        let color = "Синий"
        let engine = 1.6
        return "Комплектация: \(equipment), цена: \(price), цвет: \(color), двигатель: \(engine)"
    }
    
    var comfort: String {
        let equipment = "Комфорт"
        let price = 2400000
        let color = "Черный"
        let engine = 2.0
        return "Комплектация: \(equipment), цена: \(price), цвет: \(color), двигатель: \(engine)"
    }
    
    var full: String {
        let equipment = "Полная"
        let price = 3500000
        let color = "Красный"
        let engine = 2.8
        return "Комплектация: \(equipment), цена: \(price), цвет: \(color), двигатель: \(engine)"
    }
}

class Model3 {
    var nameOfCar: String
    var photo: String
    init(nameOfCar: String, photo: String) {
        self.nameOfCar = nameOfCar
        self.photo = photo
    }
}

extension Model3 {
    var standart: String {
        let equipment = "Стандарт"
        let price = 1200000
        let color = "Серый"
        let engine = 1.2
        return "Комплектация: \(equipment), цена: \(price), цвет: \(color), двигатель: \(engine)"
    }
    
    var comfort: String {
        let equipment = "Комфорт"
        let price = 1800000
        let color = "Белый"
        let engine = 1.6
        return "Комплектация: \(equipment), цена: \(price), цвет: \(color), двигатель: \(engine)"
    }
    
    var full: String {
        let equipment = "Полная"
        let price = 2000000
        let color = "Серебристый"
        let engine = 1.8
        return "Комплектация: \(equipment), цена: \(price), цвет: \(color), двигатель: \(engine)"
    }
}


var model1 = Model1(nameOfCar: "Ауди а7", photo: "Фото1")
print(model1.standart)
print(model1.comfort)
print(model1.full)
var model2 = Model2(nameOfCar: "Тойота Камри", photo: "Фото2")
print(model2.standart)
print(model2.comfort)
print(model2.full)
var model3 = Model3(nameOfCar: "Хонда Цивик", photo: "Фото3")
print(model3.standart)
print(model3.comfort)
print(model3.full)

