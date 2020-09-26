import UIKit

var str = "Hello, playground"




// Задание 3

/*func task3(_ animals: String...) -> String {
    var sum = ""
    sum = animals.joined(separator: ", ")
    return sum
}
print(task3("Кошка", "Собака", "Птица", "Хомяк"))*/

/*func task3(_ animals: String...) -> String {
    var sum = ""

    for el in animals{
        sum += el + ", "
    }

    let endIndex = sum.index(sum.endIndex, offsetBy: -2) // долго думала как не добавлять запятую к последнему элементу, но ничего не придумала((( нашла только вот такой вариант, который убирает символы в конце строки, работает, но выдает желтую ошибку
    let stringAnimals = sum.substring(to: endIndex)

    return stringAnimals
}
print(task3("Кошка", "Собака", "Птица", "Хомяк"))*/



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
    /*if sum > sum1 {
        return true
    }else {
        return false
    }*/
    return sum > sum1 ? true : false // вместо if-else можно использовать тернарный оператор
}
task5(forArray: [51, 23, 9, 13, 5], forArray2: [14, 10, 34, 8, 6])

// Задание 6

/*func sortArray(_ numArray: Int...) -> Array<Int> {
    
  return numArray.sorted(by: >)
}
sortArray(65, 33, 143, 12, 94, 8)*/

// Пузырьковая сортировка
var numArray = [65, 33, 143, 12, 94, 8]
func sortArray(_ numArray: inout [Int]) -> Array<Int> {
    for v in 0..<numArray.count{
        
        let last = (numArray.count - 1) - v
        for v in 0..<last{
            let number1 = numArray[v]
        
            if number1 < numArray[v + 1]{
                let tempNumb = numArray[v + 1]
                numArray[v + 1] = number1
                numArray[v] = tempNumb
            }
        }
    }
  return numArray
}
sortArray(&numArray)




// Задание 7


func avgNumber(_ numArray: Int...) -> Int {
    var sum: Int = 0
    for v in numArray {
        sum += v
    }
    return sum / Int(numArray.count)
}
avgNumber(65, 33, 143, 12, 94, 8)

// Отличия. В моем примере: 1) Массив не взят в [] 2) Здесь var sum: Int = 0 и здесь Int(numArray.count) можно убрать Int

//Если выполнить этот код, то будет красная ошибка из-за деления на ноль. Так как массив пустой, то sum = 0 и numArray.count это тоже 0.

/*func avgNumber(_ numArray: [Int]) -> Int {

    var sum = 0

    for v in numArray {

        sum += v

    }

    return sum / numArray.count

}



avgNumber([])*/


// Вариант 1 изменить Int на Double, тогда красной ошибки не будет

/*func avgNumber(_ numArray: [Double]) -> Double {

    var sum: Double = 0

    for v in numArray {

        sum += v

    }

    return sum / Double(numArray.count)

}


avgNumber([])*/

// Но если в массив подставить числа, то может получиться число с длинным хвостом, например 59.166666666666, если подставить (65, 33, 143, 12, 94, 8), тогда можно написать round(sum / Double(numArray.count)) чтобы округлить число.

// Вариант 2 - задать условие, что если количество элементов в массиве равно 0 (значит и sum = 0), то выводить sum / 1 (то есть 0) вместо sum / numArray.count. Если в массиве все же будет какое-то количество элементов, то вернется среднее арифметическое.


/*func avgNumber(_ numArray: [Int]) -> Int {

    var sum = 0
    numArray.count
    for v in numArray{
        sum += v
    }
      return numArray.count == 0 ? sum / 1 : sum / numArray.count
    
}

avgNumber([])*/



// Задание 8

/*func task8(array8: [String], a: String) -> Int? {
    let b = ""
    var c = Int(b)
    for (index, el) in array8.enumerated(){
    if el == a {
    c = Int(index)
   }
        
}
return c

}

task8(array8: ["Nadya", "Sasha", "Ksusha", "Tanya", "Dima", "Irina"], a: "Irina")*/

/*func task8(array8: [String], a: String) -> Int? {

    var c: Int?

    for (index, el) in array8.enumerated(){

        if el == a {

            c = index

        }

        

    }

    return c

    

}

task8(array8: ["Nadya", "Sasha", "Ksusha", "Tanya", "Dima", "Irina", "Nadya", "Sasha", "Ksusha", "Tanya", "Dima", "Irina"], a: "Irina")*/

    

// Отличия: 1) Можно не задавать переменную b 2)  c = Int(index) здесь не нужно указывать Int
/* "Если в массиве array8 будет две строки, которые равны строке a (параметр функции), то какой индекс вернет данная функция?"
Функция возвращает второй индекс, то есть 11, а не 5
*/
// Как изменить алгоритм, чтобы вернулся индекс 5 я без понятия, если честно((

func task8(array8: [String], a: String) -> Int? {

    var c: Int?

    for (index, el) in array8.enumerated(){

        if el == a {

            return index

        }

    }

    

    return nil

}

task8(array8: ["Nadya", "Sasha", "Ksusha", "Tanya", "Dima", "Irina", "Nadya", "Sasha", "Ksusha", "Tanya", "Dima", "Irina"], a: "Irina")
