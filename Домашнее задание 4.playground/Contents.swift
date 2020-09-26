import UIKit

var str = "Hello, playground"


//Задание 2
// "Если бы в вашей программе была работа с игральными картами, как бы вы организовали их хранение?"
// Я думаю, что в enum
enum Cards {
    case king, quenn, jack, ace

  

enum Suit {
    case heart, dimond, spade, club

  }
}

var cards = Cards.king
cards = .quenn
Cards.ace

// Задание 3
// "Каких типов могут быть raw значения кейсов enum’а?" String, Int, Character


// Задание 4
// Классы
let pi = 3.14
class CirqleClass {
    let radius: Double
    let position: String
    init(radius: Double, position: String) {
        self.radius = radius
        self.position = position
    }
    func size() -> Double {
        return 2.0 * pi * radius
    }
}

let size1 = CirqleClass(radius: 30.0, position: "Центр")
size1.radius
size1.position
size1.size()

class RectangleClass {
    let width: Int
    let height: Int
    let position: String
    init(width: Int, height: Int, position: String) {
        self.width = width
        self.height = height
        self.position = position
    }
    func sizeR() -> Int {
        return width * height
    }
}
let sizeR1 = RectangleClass(width: 35, height: 78, position: "Слева")
sizeR1.width
sizeR1.height
sizeR1.position
sizeR1.sizeR()

// Структуры
struct CirqleStruct{
    let radius: Double
    let position: String
    func sizeC () -> Double {
       
     return 2.0 * pi * radius
        
    }
}

let size2 = CirqleStruct(radius: 16.0, position: "Центр")
size2.radius
size2.position
size2.sizeC()


struct RectangleStruct {
    let width: Int
    let height: Int
    let position: String
    func sizeRc() -> Int {
        return width * height
    }
}
let sizeR2 = RectangleStruct(width: 22, height: 102, position: "Справа")
sizeR2.width
sizeR2.height
sizeR2.position
sizeR2.sizeRc()




// Задание 5

class ClassUser1{

    var name: String // здесь поменяла let на var

    init(name: String) {

        self.name = name

    }

}



class ClassUser2{

    var name: String

    init(name: String) {

        self.name = name

    }

}



struct StructUser1{

    var name: String // здесь поменяла let на var

    init(name: String) {

        self.name = name

    }

}



struct StructUser2{

    var name: String

    init(name: String) {

        self.name = name

    }

}



let user1 = ClassUser1(name: "Nikita")

user1.name = "Anton" // здесь ошибка, потому что name в ClassUser1 это константа, поменяла let на var в ClassUser1



let user2 = ClassUser2(name: "Nikita")

user2.name = "Anton"



var user3 = StructUser1(name: "Nikita")
//var
user3.name = "Anton" // в StructUser1 нужно поменять let на var и let user3 изменить на var user3



var user4 = StructUser2(name: "Nikita")
//var
user4.name = "Anton" // в StructUser2 нужно поменять let на var и let user4 изменить на var user4



var user5 = ClassUser1(name: "Nikita")

user5.name = "Anton"



var user6 = ClassUser2(name: "Nikita")

user6.name = "Anton"



var user7 = StructUser1(name: "Nikita")

user7.name = "Anton"



var user8 = StructUser2(name: "Nikita")

user8.name = "Anton"




// Задание 6

class Cars {
    var name: String
    var model: String
    var color = ""
    var engine = 0.0
    init(name: String, model: String) {
       self.name = name
       self.model = model
       
   }

   
}


let car = Cars(name: "Audi", model: "A7")

print(car.name)
print(car.model)
car.color = "White"
print(car.color)
car.engine = 3.2
print(car.engine)

// Задание 7

class Calc{
    var n1: Int
    var n2: Int
    init(n1: Int, n2: Int) {
        self.n1 = n1
        self.n2 = n2
    }
    func plus1() -> Int {
        n1 += n2
        return n1
    }
    
    func minus1() -> Int {
        n1 -= n2
        return n1
    }
    func multi1() -> Int {
        n1 *= n2
        return n1
    }
    func div1() -> Int {
        n1 /= n2
        return n1
    }
}
let calc1 = Calc(n1: 23, n2: 4)
print(calc1.n1)
calc1.plus1()
calc1.plus1()
calc1.minus1()
calc1.multi1()
calc1.div1()
calc1.div1()




// Задание 8
// "В каких случаях следует использовать ключевое слово static?" Ключевое слово static используется в случаях, когда нужно чтобы свойство принадлежало не конкретному экземпляру класса, а всему классу. Static можно указать у констант, переменных, функций.



// Задание 9
// "Могут ли иметь наследников: 1. Классы 2. Структуры 3. Enum’ы" Классы могут, а струкруры и Enum’ы нет.


//Задание 10

// Здесь я совсем запуталась(( Не понятно, как делать ходы с учетом направления
enum Directions: String {
   
    case south, west, north, east
    
    
}

struct gamerCoordinate {
    var X: Int
    var Y: Int
    
}

func gamerWalk (point: inout gamerCoordinate) {
    point.X += 1
    point.Y += 1
}



var point1 = gamerCoordinate(X: 4, Y: 2)

print(point1)
gamerWalk(point: &point1)
print(point1)
gamerWalk(point: &point1)
print(point1)

//Бонусные задания к урокам:



//"Можно ли в enum’е хранить дополнительные данные?"
//Тут затрудняюсь ответить. Можно?
//"В каких случаях удобнее структурировать данные и функции в класс?"
//"В каких случаях лучше использовать класс, а в каких – структуру?"
// Классы: 1) Когда одному классу нужно наследовать какие-то характеристики другого класса 2) Если нужно использовать deinit
// Структуры: 1) При небольшом наборе данных 2) В большинстве случаев удобнее структура (легче отследить изменение данных, init задан по умолчанию)




