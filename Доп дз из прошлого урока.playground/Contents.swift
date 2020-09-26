import UIKit




// Задание 1

let a = Int(2) / Int(3) // здесь разные типы, поэтому приведен ок одному - к Int
let b = Double(13.0) / Double(5) // здесь тоже были разные типы, приведены к Double
let c = a + Int(b) // b приведен к типу Int, чтобы можно было сложить с a
let d = "iOS" + " and " + "Android" // тип String, выведет iOS and Android
let e: Int32 = 1000 // здесь вместо типа Int8 поставила тип Int32, иначе получается ошибка
let f = Double("900.0") // вместо Int поставила Double, так как число с точкой, иначе получается nil
let g = Float("-90.9") // заменила Double на Float, чтобы получилось точно -90,9, а если оставить Double, то просто число будет длиннее (-90.90000000000001)
let h: Int = -10000 // поменяла с UInt на Int, так как число отрицательное
let j = 30 % 2 // (15*2)+0= 30, ответ 0
let k = 156 % 27 // (27*5)+21=156, ответ 21
let l = 20.3.truncatingRemainder(dividingBy: 8) // это сначала понять не получилось, но погуглив я так поняла, что это аналог % , то есть (8*2)+4,3, ответ 4,3
let m = 206.8.truncatingRemainder(dividingBy: 95.4) // (95,4*2)+16, ответ 16
let n = (20, 4) // два значения объеденены в tuple
let o = n.0 / n.1 // 20/4=5
let p = (iOS: "iOS", android: "Android", iOSV: 13.4, androidV: 30) // 4 значения (с названиями) объеденены в tuple
let q = "\(p.iOS) v. \(p.iOSV), \(p.android) v. \(p.androidV)" //iOS v.13.4, Android v.30
let r = 5.0 / 0 // должна быть ошибка, так как на ноль делить нельзя. Что такое inf?
//let s = 5 / 0 // будет ошибка, так как на ноль не делится

// Задание 2

let num = 29
let num0b = 0b11101
let num0o = 0o35
let num0x = 0x1d


// Задание 4

// Оператор унарного плюса и минуса
let sample = -18
let sample2 = +sample

let sample3 = 30
let sample4 = -sample3

// Тернарный условный оператор
let womanHeight = 168
let hasHeels = true
let fullHeight = womanHeight + (hasHeels ? 10 : 0)

let timetoShopbyFeet = 20
let hasCar = true
let timetoShopbyCar = timetoShopbyFeet - (hasCar ? 15 : 0)

// Оператор замкнутого диапазона
for i in 1...10 {
    print("День \(i): потрачено \(i * 1000) руб")
}


for index in 1...3 {
    print("\(index) маршрут \(index * 5) км ")
}

// Оператор полузамкнутого диапазона
let country = ["Тайланд", "Индонезия", "Сингапур", "Гонконг"]
let count = country.count
for i in 0..<count {
 print("Пункт назначения номер \(i + 1): \(country[i])")
}


let player = [637, 873, 982]
let count2 = player.count
for i in 0..<count2 {
    print("\(i + 1) место занял номер \(player[i])")
}
