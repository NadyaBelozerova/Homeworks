import UIKit


// Задание 2

// Да, можно. Например, найти сумму чисел в массиве и произведение этих же чисел.
func findSumMulti(_ array: Int...) -> (sum: Int, multi: Int){
    func findSum() -> Int{
        var sum = 0
        for v in array{
            sum += v
        }
        return sum
    }
    func findMulti() -> Int{
        var multi = 1
        for v in array{
            multi *= v
        }
        return multi
    }
    return (findSum(), findMulti())
}

findSumMulti(22, 3, 14, 5)


// Задание 3
// вот тут использовала joined для разделения запятыми, но мне кажется есть какой-то другой способ?
func task3(_ animals: String...) -> String {
    var sum = ""
    sum = animals.joined(separator: ", ")
    return sum
}
print(task3("Кошка", "Собака", "Птица", "Хомяк"))


// Задание 4

func task4(number1: inout Int, number2: inout Int){
    let number3 = number1 * 2
    number1 = number2 * 2
    number2 = number3
}
var number1 = 21
var number2 = 17

task4(number1: &number1, number2: &number2)


print("\(number1) и \(number2)")


// Задание 5

func task5(forArray array: [Int], forArray2 array2: [Int]) -> Bool{
    var sum = 0
    var sum1 = 0
    for v in array {
        sum += v
    }
    for v in array2 {
        sum1 += v
    }
    if sum > sum1 {
        return true
    }else {
        return false
    }
}
task5(forArray: [51, 23, 9, 13, 5], forArray2: [14, 10, 34, 8, 6])


// Задание 6

func sortArray(_ numArray: Int...) -> Array<Int> {
    
  return numArray.sorted(by: >)
}
sortArray(65, 33, 143, 12, 94, 8)


// Задание 7


func avgNumber(_ numArray: Int...) -> Int {
    var sum: Int = 0
    for v in numArray {
        sum += v
    }
    return sum / Int(numArray.count)
}
avgNumber(65, 33, 143, 12, 94, 8)



// Задание 8
// это задание очень тяжело далось, этот способ правильный или как-то проще можно было написать?
func task8(array8: [String], a: String) -> Int? {
    let b = ""
    var c = Int(b)
    for (index, el) in array8.enumerated(){
    if el == a {
    c = Int(index)
   }
        
}
return c

}

task8(array8: ["Nadya", "Sasha", "Ksusha", "Tanya", "Dima", "Irina"], a: "Irina")

//Задание 9

var age = Int("25.") ?? 0 // так как 25 тут не является числом из-за точки, то выбрано будет 0

var result = age < 18 ? "Hello, young man/woman" : "Hello grown man/woman" // 0<18

result += " \(age)" // result будет "Hello, young man/woman 0"


// Задание 10
// Результат 4, но я если честно не поняла задание. Объясните как получилось 4?
func inc(a: Int) -> Int{

    return a + 3

}


func dec(a: Int) -> Int{

    return a - 5

}


func compute(a: Int) -> Int{

    return inc(a: a) + dec(a: a)

}


let result2 = compute(a: 5) - compute(a: 3)



/* Бонусные задания
"Можно ли в функции вернуть tuple?"
Можно. Например, как в задании 2. 
"В каких случаях следует использовать восклицательный знак для опшиналов?"
В случаях, если точно известно, что опционал имеет значение.
*/





