import UIKit

var str = "Hello, playground"


//Задание 1. Привести примеры, создав несколько точек, размеров и прямоугольников.



struct CGPoint {
    var x: Int
    var y: Int
}

var point = CGPoint(x: 3, y: 4)
var point1 = CGPoint(x: 5, y: -3)


struct CGSize {
    var width: Int
    var height: Int
}

var size = CGSize(width: 200, height: 300)
var size1 = CGSize(width: 400, height: 700)

struct CGRect {
    var x: Int
    var y: Int
    var width: Int
    var height: Int
}

var rect = CGRect(x: 2, y: 4, width: 400, height: 300)
var rect1 = CGRect(x: 1, y: 6, width: 350, height: 650)

//Задание 2. Реализовать перечисление, которое представляет собой тип авторизации пользователя по номеру телефону, по почте, по логину.

enum Authorization {
    case phone (Int)
    case email (String)
    case login (String)
}

var user = Authorization.phone (79090112466)
user = .email("swift@gmail.com")
user = .login("Nickname")

switch user {
case .phone(let number0):
    print ("Номер телефона: \(number0)")
case .email(let email0):
    print ("Почта: \(email0)")
case .login(let login0):
    print ("Логин: \(login0)")
}

//Задание 3. Реализовать калькулятор, используя recursive enumeration
// В разделе Recursive Enumerations написано, что такие энумы могут хранить только число, сложение и умножение. Тогда как сделать минус и деление?
indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
    
}
let number1 = ArithmeticExpression.number(7)
let number2 = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(number1, number2)
let multi = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))


func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}
print(evaluate(sum))
print(evaluate(multi))


//Задание 4. Используя CaseIterable создать полную колоду карт

enum Cards: CaseIterable {
    case two, three, four, five, six, seven, eight, nine, ten
    case ace, king, quenn, jack
}

enum Suits: CaseIterable {
    case clubs, diamonds, hearts, spades
}

print("Колода карт содержит \(Cards.allCases.count) номиналов и \(Suits.allCases.count) масти, всего \(Cards.allCases.count * Suits.allCases.count) карты")
let cardsList = Cards.allCases
.map({ "\($0)" })
.joined(separator: ", ")

let suitsList = Suits.allCases
.map({ "\($0)" })
.joined(separator: ", ")


/* Задание 7.
 
 Можно ли внутри класса написать определение класса/структуры/перечисления?
 Да, можно. Примеры:*/

class Plant {
    
    class Flowers{
        var nameOfFlower: String
        init(nameOfFlower: String) {
            self.nameOfFlower = nameOfFlower
        }
        
    }
    class Trees{
        var nameOfTree: String
        init(nameOfTree: String) {
            self.nameOfTree = nameOfTree
        }
        
    }
}
var flower = Plant.Flowers(nameOfFlower: "Rose")

class Plant1 {
    
    struct Flowers{
        var nameOfFlower: String
        
    }
    struct Trees{
        var nameOfTree: String
        
    }
}

var tree = Plant1.Trees(nameOfTree: "Ash")
 

class Plant2 {
    
    enum Plant: String {
        case ash = "Ясень"
        case cedar = "Кедр"
        case oak = "Дуб"
    }
}

var three2 = Plant2.Plant.ash.rawValue

 /*
 А внутри структуры?
 Можно*/

 struct Plant3 {
     
     class Flowers{
         var nameOfFlower: String
         init(nameOfFlower: String) {
             self.nameOfFlower = nameOfFlower
         }
         
     }
     class Trees{
         var nameOfTree: String
         init(nameOfTree: String) {
             self.nameOfTree = nameOfTree
         }
         
     }
 }
 var three3 = Plant.Trees(nameOfTree: "Ash")


struct Animals {
    
    struct Cats {
        var nameOfCat: String
    }
    struct Dogs {
        var nameOfDog: String
    }
}

var nameOfAnimal = Animals.Cats(nameOfCat: "Ksusha")

struct Animals2{
    enum Animal {
        case cats
        case dogs
        case birds
    }
}

var animal = Animals2.Animal.cats

/*
 Внутри перечисления?
 Можно*/
enum Seasons {
    case summer
    case winter
    case spring
    case fall
    class Forecast {
       var t: Int
       var rain: Bool
       var sun: Bool
        init(t: Int, rain: Bool, sun: Bool) {
            self.t = t
            self.rain = rain
            self.sun = sun
        }
    }
    struct Forecast1{
        var t: Int
        var rain: Bool
        var sun: Bool
    
    }
    enum Weather {
        case hot
        case warm
        case cold
    
    }
}
var season = Seasons.summer
season = .winter
var weather = Seasons.Weather.warm
weather = .cold
var forecast1 = Seasons.Forecast(t: 16, rain: true, sun: false)
var forecast2 = Seasons.Forecast1(t: 32, rain: false, sun: true)
 /*
 Внутри протокола?
 Внутри протокола нельзя.

 Написать протокол внутри протокола? Или протокол внутри класса/структуры/перечисления?
 Протокол нельзя написать внутри класса, структуры, перечисления или другого протокола.
 
Привести примеры внутренних классов/структур/перечислений/протоколов.
 
 */

//Задание 8. Может ли своя структура, класс, перечисление быть rawValue для перечисления? Если да, то попробуйте привести пример.
// Насколько я понимаю, то не может. Хотя не очень понимаю что значит "своя" структура/класс?


