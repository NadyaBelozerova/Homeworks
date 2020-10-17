import UIKit

var str = "Hello, playground"

//Задание 1

//#1
/*var array1: [Int] = [675, 3457, 789, 22, 12]
var result1 = 0
var numb = 22
for v in array1 {
    if v == numb {
        result1 = 1
    }
}
if result1 == 1 {
    print("Присутствует")
}
if result1 == 0 {
    print("Отсутствует")
}*/

func task1(array: [Int], numb: Int) -> String {
    var result1 = 0
    for v in array {
    if v == numb {
        result1 = 1
      }
    }
    return result1 == 1 ? "Присутствует" : "Отсутствует"
    
}
task1(array: [675, 3457, 789, 22, 12], numb: 22)


//#2
/*
 var animals: [String] = ["Кошка", "Собака", "Птица", "Хомяк"]
 var myAnimal = "Кошка"
 var result2 = 0
 for el in animals {
     if el == myAnimal {
        result2 = 1}
     
     }
 if result2 == 1 {
     print("Присутствует")
 }
 if result2 == 0 {
     print("Отсутствует")
 }
 
 */

func findAnimal(animals: [String], find: String) -> String{
   var result2 = 0
    for v in animals {
    if v == find {
       result2 = 1}
    
    }
    return result2 == 1 ? "Присутствует" : "Отсутствует"
}

findAnimal(animals: ["Кошка", "Собака", "Птица", "Хомяк"], find: "Кошка")



//#3
/*
 var names3 = ["Nadya", "Sasha", "Ksusha", "Tanya", "Dima", "Irina"]
 var name1 = "Ksusha"
 for (index, el) in names3.enumerated(){
     if el == name1 {
     print("\(index)")
     }
 }
 */

func names(name: [String], findName: String) -> Int?{
    for (index, v) in name.enumerated(){
        if v == findName {
        return index
        }
        
    }
    return nil
}
names(name: ["Nadya", "Sasha", "Ksusha", "Tanya", "Dima", "Irina"], findName: "Ksusha")


//#4
/*var array2 = [16, 61, 9, 33, 100, 21]
for v in array2{

    if v % 3 == 0 {
        print("Число \(v) делится на 3")
        
    }

}*/

func task4(_ numbers: Int...) -> String{
    var newArray = [Int]()
    for v in numbers{
    if v % 3 == 0 {
       newArray += [v]
   }
        
 }
    return "Числа \(newArray) делятся на три"
    
}

task4(16, 61, 9, 33, 100, 21)



//#5
/*var array3 = [25, 78, 18, 126, 525, 20, 10]
var newArray = [Int]()
for v in array3{

    if v % 2 == 0 {
        print("Число \(v) делится на 2")
        newArray += [v]
    }

}
for v in newArray{
    if v % 5 == 0 {
        print("Число \(v) делится на 2 и на 5")
    }
}
*/

func task5(_ numbers2: Int...) -> String{
 var newArray4 = [Int]()
    func fund2() -> String{
        for v in numbers2{
        if v % 2 == 0 {
            newArray4 += [v]
  }
 }
 return "Числа \(newArray4) делятся на 2"
}
        
        
    func find5() -> String{
            var newArray5 = [Int]()
            for v in newArray4{
            if v % 5 == 0{
                newArray5 += [v]
            }
        }
            return "Числа \(newArray5) делятся на 2 и на 5"
    }
       
       return "\(fund2()), \(find5())"
            
}

  
task5(25, 78, 18, 126, 525, 20, 10)

    
    
//#6
    /*var array4 = [3, 2, 6, 8]

var sum = 1

for v in array4 {
    sum *= v
}
sum*/
 
 
    func task6(_ numbers3: Int...) -> Int{
        var sum = 1
        for v in numbers3 {
            sum *= v
        }
        return sum
}

task6(3, 2, 6, 8)


//#7
/*var array5 = [3, -2, 6, -8, 7, 2, -100]
var sumPositive = 0
for v in array5 {
if v > 0 {
   sumPositive += v
    }
}
sumPositive*/

func task7(_ numbers4: Int...) -> Int {
    var sumPositive = 0
    for v in numbers4 {
    if v > 0 {
       sumPositive += v
        }
    }
    return sumPositive
}
 
task7(3, -2, 6, -8, 7, 2, -100)


//#8

/*var names1 = ["Nadya", "Sasha", "Ksusha", "Tanya", "Dima", "Irina"]

for (index, el) in names1.enumerated(){
   print("\(index): \(el) ")

}*/

func task8(_ numbers5: String...) {
    for (index, el) in numbers5.enumerated(){
       print("\(index): \(el) ")

    }
}

task8("Nadya", "Sasha", "Ksusha", "Tanya", "Dima", "Irina")



//#9

/*var array6 = [120, 11, 87, 3, 49, 456, 2, 201]
var result = 0
for v in array6 {
    switch v {
    case 0...100:
        result += v * 2
    case 100...200:
        result += v * 3
    case 200...300:
        result += v * 4
    default:
        result += v * 1
}
 
}

result
*/

func task9(_ numbers6: Int...) -> Int{
    var result = 0
    for v in numbers6 {
        switch v {
        case 0...100:
            result += v * 2
        case 100...200:
            result += v * 3
        case 200...300:
            result += v * 4
        default:
            result += v * 1
    }
  }
        return result
}

task9(120, 11, 87, 3, 49, 456, 2, 201)


//Задание 2
// Функция для факториала числа


func factorial(_ n: Int) -> Int{
      return n == 0 ? 1 : n * factorial(n-1)
    
    }
 
var x = factorial(8)


//Задание 3
//Функция для последовательности чисел Фибонначи
// Эта функция, как я понимаю, возвращает число под номером n в последовательности чисел Фибонначи
func fib(_ n: Int) -> Int{
     
    if n == 0{
         
        return 0
    }
    else if n == 1{
         
        return 1
    }
    return fib(n-1) + fib(n-2)
}
fib(10)

// А эта массив с последовательностью чисел (первые 10 чисел), но эту функцию я не совсем понимаю
func fibonacci(n: Int) -> [Int] {

    assert(n > 1)

    var array = [0, 1]

    while array.count < n {
        array.append(array[array.count - 1] + array[array.count - 2])
    }
    return array
}

fibonacci(n: 10)




//Задание 4
// Придумать еще два задания на функции и решить их.
//#1 Например, расчет дневной нормы воды для человека из расчета 30мл на 1кг. Рассчитывается базовая норма воды и норма воды в активный день (+ 400 мл)

func normOfWater (w: Int, addActiv: Bool) -> String {
    let activDay = 400
    if addActiv {
        return "Норма воды в активный день \(w * 30 + activDay) мл"
    } else {
    return "Базовая норма воды \(w * 30) мл"
    }
}
normOfWater(w: 50, addActiv: true)



//#2
// Второй пример для трекера воды: если выпито менее 250 мл возвращается грустный смайл, от 250-750 нейтральный, от 750 до 1500 веселый, а если больше нормы то уведомление "Не стоит пить больше своей нормы"
func waterTracker(normOfWater: Int) -> String{
    switch normOfWater {
    case 0...250:
         return "☹️"
    case 250...750:
        return "😐"
    case 750...1500:
        return "😀"
    default:
        break
    }
    return "Не стоит пить больше своей нормы"
}
waterTracker(normOfWater: 1000)
