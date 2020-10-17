import UIKit


//Задание 1

var array1: [Int] = [675, 3457, 789, 22, 12]
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
}

//Задание 2

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

//Задание 3
var names3 = ["Nadya", "Sasha", "Ksusha", "Tanya", "Dima", "Irina"]
var name1 = "Ksusha"
for (index, el) in names3.enumerated(){
    if el == name1 {
    print("\(index)")
    }
}

//Задание 4
var array2 = [16, 61, 9, 33, 100, 21]
for v in array2{

    if v % 3 == 0 {
        print("Число \(v) делится на 3")
        
    }

}

//Задание 5

var array3 = [25, 78, 18, 126, 525, 20, 10]
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

//Задание 6
var array4 = [3, 2, 6, 8]

var sum = 1

for v in array4 {
    sum *= v
}
sum

//Задание 7
var array5 = [3, -2, 6, -8, 7, 2, -100]
var sumPositive = 0
for v in array5 {
if v > 0 {
   sumPositive += v
    }
}
sumPositive


//Задание 8

var names1 = ["Nadya", "Sasha", "Ksusha", "Tanya", "Dima", "Irina"]

for (index, el) in names1.enumerated(){
   print("\(index): \(el) ")

}

//Задание 9

var array6 = [120, 11, 87, 3, 49, 456, 2, 201]
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






    
   
