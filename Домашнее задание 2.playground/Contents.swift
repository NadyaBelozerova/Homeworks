import UIKit


// Задание 2

var int1 = [Int]()
print("Пустой массив - \(int1.count) значений.")

var int2 = Array(repeating: 5, count: 4)

var int3 = Array(repeating: 7, count: 4)

var int4 = int2 + int3

var int5: [Int] = [29, 32, 57]


// Задание 3

var no: [Int] = [2000, 4000, 5500]
no.insert(12000, at: 0)
no.remove(at: 1)
no
 var i = 0  // вот с этого момента возникли сложности (этот кусок кода я нашла, а не сама написала), так и не поняла как вычислить максимум и минимум, может еще какой-то вариант есть?
 var maximumNo = no[0]
 var minimumNo = no[0]
 while i < no.count{

     if (no[i] > maximumNo) {
         maximumNo = no[i]
     }
     if (no[i] < minimumNo) {
         minimumNo = no[i]
     }
     i = i + 1
 }
maximumNo
minimumNo
print(maximumNo - minimumNo)


// Задание 4

var names: [String] = ["Nadya", "Sasha", "Ksusha"]
names.insert("Irina", at: 0)
names.append("Tanya")
var names2 = ["Dima", "Kostya"]
var names3 = names + names2
names3 += ["Sveta"]

// Задание 5

var array = [7, 5, 2]

array[1] = 9 // значит 5 в массиве заменить на 9

array[2] = array[1] + array[2] // значит 2 в массиве заменить на 9+2

print(array[2]) // ответ 11

// Задание 6
// если честно про greeting не поняла, у меня вот такой код получился и сработал, но как правильно сделать по заданию?
var names1 = ["Nadya", "Sasha", "Ksusha", "Tanya", "Dima", "Irina"]
var greeting = ""
for (index, el) in names1.enumerated(){
    if index % 2 == 0 {
        print ("Go left, \(el)")
    }else {
        print ("Go right, \(el)")
    }

}

// Задание 7
/* Сет представляет собой набор уникальных данных в неупорядоченном формате, в сет нельзя добавить одинаковые значения, иначе будет ошибка. Так же у элементов в сете нет индекса, в отличие от массива. В массив можно добавлять неуникальные данные и это не будет ошибкой.*/


// Задание 8
let myEmoji: Set = ["😂", "🎊", "🕺", "🚀"]

let wifeEmoji: Set = ["🎸", "😂", "🎊", "🦋"]

myEmoji.intersection(wifeEmoji) // значения, которые есть и в myEmoji, и wifeEmoji

myEmoji.symmetricDifference(wifeEmoji) // значения, которые не повторяются в myEmoji и wifeEmoji

myEmoji.union(wifeEmoji) // объеденены все уникальные значения из myEmoji и wifeEmoji

myEmoji.subtracting(wifeEmoji) // значения которые есть в myEmoji, но нет в wifeEmoji


// Задание 9

var drinks: Set = ["Вода", "Зеленый чай", "Кофе", "Сок"] // сет для приложения Трекер воды
for i in drinks {
print ("\(i)")
}

var hydro: [String : Int] = ["Вода" : 100, "Молоко" : 88, "Сок" : 91] // словарь для Трекера воды
for (drink, i) in hydro {
print("\(drink): индекс гидратации \(i)%")
}

var notify: Array = ["отключить", "каждые полчаса", "1 раз в час", "1 раз каждые 2 часа"] // массив для трекера воды
print("Присылать уведомления:")
for i in notify {
    print("\(i)")
}

// Задание 10

let number = 5
let power = 3
var answer = 1
for _ in 1...power{
    answer *= number
}
print("\(number) в степени \(power) равно \(answer)")


// Задание 11

let mood = -1
var result = ""
switch mood {
case 0...3: result = "Sad"
case 4...7: result = "Ok"
case 8...10: result = "Happy"
default: result = ""
}
result

if mood <= 3 {
    result = "Sad"
}else if mood <= 7 {
    result = "Ok"
}else if mood <= 10 {
    result = "Happy"

}
 
result


// Бонусные задания

//1

var array1 = ["🏆", "😎", "🎰"]

array1[1] = "💃" // заменить 😎 на 💃

array1[2] = array1[1] + array1[2] // заменить 🎰 на 💃🎰

print(array1) // получается 🏆💃💃🎰


//2

var array2 = ["🏆", "😎", "🎰"]

if array2.count == 3 && array2[1] == "😎"{
    print("Good emoji")
    
} // если элементов в сете 3 и при условии, что элемент 1 = 😎, то выводится Good emoji

else {
    print("Bad emoji pack") // если нет, то Bad emoji pack
    
}

//3

var sum = 0

var array3 = [1, 2, 5, 9, 10, 12, 17]

for v in array3{

    if v % 2 == 0 { sum += v }

} // ответ 24 получился из 12+2+10, так как у этих значений остаток 0

print(sum)


