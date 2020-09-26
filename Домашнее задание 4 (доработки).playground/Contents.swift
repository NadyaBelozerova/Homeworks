import UIKit

var str = "Hello, playground"

/*3. Числа Фибоначчи можно записать и для отрицательных чисел.
Что произойдет, если выполнить следующий код?
fib(-10)*/

/*func fib(_ n: Int) -> Int{
     
    if n == 0{
         
        return 0
    }
    else if n == 1{
         
        return 1
    }
    return fib(n-1) + fib(n-2)
}
fib(10)*/

func fib(_ n: Int) -> Int{
     
    if n == 0{
         
        return 0
    }
    else if n == 1{
         
        return 1
    }
    return n < 0 ? fib(n+2) - fib(n+1) : fib(n-1) + fib(n-2) // в случае, если n будет < 0, то расчет будет по формуле fib(n+2) - fib(n+1)
}
fib(-10)



/*4. Функция факториала определена только для неотрицательных целых чисел.
Если вызвать функцию факториала с отрицательным числом, то приложение упадет.
factorial(-10)
Как можно исправить сигнатуру функции так, чтобы учесть ограничение факториала на входные параметры?*/

/*func factorial(_ n: Int) -> Int{
      return n == 0 ? 1 : n * factorial(n-1)
    
    }
 
var x = factorial(10)*/

func factorial(_ n: Int) -> Int{
    return n <= 0 ? 1 : n * factorial(n-1) // здесь поменяла == на <=, тогда если n будет отрицаетльное число, то будет 1 вместо ошибки
    
    }
 
var x = factorial(10)


/*Задание 2. Масти реализованы все, а номинал карт нет.
Допишите все остальные номиналы?*/
enum Cards {
    case two, three, four, five, six, seven, eight, nine, ten
    case king, quenn, jack, ace
     

enum Suit {
    case heart, dimond, spade, club

  }
}

var cards = Cards.king
cards = .quenn
Cards.ace
Cards.two

//Задание 3. А какие еще типы могут быть raw значениями для enum?
// Float и Double


/*Задание 4.
"Попробуйте объяснить, что значит position у Circle и Rect?"
Это должно быть положение фигуры, то есть координаты (x, y)
"Какой есть другой способ описать окружность?"
"Каких данных было бы достаточно, чтобы можно было нарисовать окружность на плоскости?
А для прямоугольника?"
Получается, что достаточно x и y?

 */
let pi = 3.14
class CirqleClass {
    let x: Double
    let y: Double
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }

    func size() -> Double {
        return pi * (x * x) + (y * y)
    }
}

let sizeS = CirqleClass(x: 3.0, y: 5.0)
sizeS.size()

class RectangleClass {
    let x: Int
    let y: Int
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    func sizeR() -> Int {
        return x * y
    }
}
let sizeR1 = RectangleClass(x: 5, y: 3)
sizeR1.sizeR()

// Структуры
struct CirqleStruct{
    let x: Double
    let y: Double
    func sizeC () -> Double {
       
     return pi * (x * x) + (y * y)
        
    }
}

let size2 = CirqleStruct(x: 4.0, y: 3.0)
size2.sizeC()


struct RectangleStruct {
    let x: Int
    let y: Int
    func sizeRc() -> Int {
        return x * y
    }
}
let sizeR2 = RectangleStruct(x: 7, y: 3)
sizeR2.sizeRc()


/*Задание 7. Из функции можно возвращать выражение любой сложности. Что произойдет, если выполнить следующий код?
let calc1 = Calc(n1: 23, n2: 0)
calc1.div1()
Как можно исправить?*/
//Можно использовать Double или Float вместо Int
class Calc{

    var n1: Float

    var n2: Float

    init(n1: Float, n2: Float) {

        self.n1 = n1

        self.n2 = n2

    }

    func plus1() -> Float {

        return n1 + n2

    }


    func minus1() -> Float {

        return n1 - n2

    }

    func multi1() -> Float {

        return n1 * n2

    }

    func div1() -> Float {

        return n1 / n2

    }

}


let calc1 = Calc(n1: 23, n2: 0)
print(calc1.n1)
calc1.plus1()
calc1.plus1()
calc1.minus1()
calc1.multi1()
calc1.div1()
calc1.div1()



//Задание 10. Предлагаю дополнить шаблон:

struct Coordinate {

    enum Direction {

        case south, west, north, east

    }

    

    private(set) var x: Int

    private(set) var y: Int

    

    mutating func move(to direction: Direction) {

        switch direction {

        case .north:

            y += 1
        
        case .east:

            x += 1
            
        case .south:

            y -= 1
        
        case .west:

            x -= 1

        }

    }

}
var point = Coordinate(x: 2, y: 3)
point.move(to: Coordinate.Direction.north)
point.move(to: Coordinate.Direction.west)
point.move(to: Coordinate.Direction.east)
point.move(to: Coordinate.Direction.south)

/*Данные в enum. Помимо raw value в case enum можно хранить ассоциированные дополнительные значения. Приведете несколько примеров?*/
//Пример 1
enum Direction1 {

    case south(String)
    case west(String)
    case north(String)
    case east(String)

}
var dir = Direction1.south("up")
dir = .east("right")
dir = .west("left")
dir = .north("bottom")

switch dir {
case .south(let south):
    print("Go \(south)")
case .east(let east):
    print("Go \(east)")
case .west(let west):
     print("Go \(west)")
case .north(let north):
     print("Go \(north)")
}


//Пример 2
enum Airports {
    case Moscow(String, String)
    case StPetersburg(String, String)
    case Ekaterinburg(String, String)
}
var air = Airports.Moscow("Шереметьево", "SVO")
air = .StPetersburg("Пулково", "LED")
air = .Ekaterinburg("Кольцово", "SVX")

switch air {
case .Moscow(let name, let code):
    print("Название аэропорта: \(name), код: \(code)")
case .StPetersburg(let name1, let code1):
    print("Название аэропорта: \(name1), код: \(code1)")
case .Ekaterinburg(let name2, let code2):
    print("Название аэропорта: \(name2), код: \(code2)")
}

//Пример 3
enum Products {
    case Product1(Int, Int)
    case Product2(Int, Int)
    case Product3(Int, Int)
}
var prod = Products.Product1(6234, 6000)
prod = .Product2(2456, 12000)
prod = .Product3(9821, 9000)

switch prod {
case .Product1(let art1, let price1):
    print("Артикул: \(art1), цена: \(price1) р")
case .Product2(let art2, let price2):
    print("Артикул: \(art2), цена: \(price2) р")
case .Product3(let art3, let price3):
    print("Артикул: \(art3), цена: \(price3) р")
}



