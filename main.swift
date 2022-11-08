//
//  main.swift
//  6thlessonHomeW
//
//  Created by Каира on 7.11.2022.
//

//#1. Создать двухмерный массив
//Первый слой - числа либо строки
//Второй - элементы
//Задача: При вводе чисел либо строк в readLine(неограниченное количество) отсортировать и распределить по нужным массивам

var words2dArray:  [Int] = []
var char2darray: [Int] = []
char2darray.sort()
words2dArray.sort()
var num2dArray: [Int] = []
num2dArray.sort()
print(num2dArray)
//var StringArray:Array = [""]
//var namesArray = [ String]()
//var stop = false
//while stop == false{
//    let readLine = readLine()!
//    if readLine.count == 0{
//        stop = true
//    }else{
//        namesArray.append(readLine)
//    }
//}
//print(namesArray)
//
//var names: [String] = ["Ali","Tima","Reka","Sever"]
//var numbers: [Int] = [1,2,3,4,5,6,7,8,9,15]
//names.forEach({print($0)})
//for (index,value) in names.enumerated(){
//    print("\(index) - \(value)")
//}
//
//for i in 0 ..< numbers.count{
//    print(numbers[i])
//}
//
//print(namesArray)
//







//#2. Создать двухмерный массив
//Первый слой - числа от 1 до 100
//Второй слой - рандомные слова в количестве, соответствующему первому слою
//Задача: Создать массив с разными словами и в цикле добавить рандомно слова в количестве первого слоя в массив по текущему номеру

var array: [Int] = [1,2,3,4,5]
array.append(40)
array.append(41)
array.append(42)
array.append(80)

print(array)

var dictionary: [String: Int] = ["keep":1,"brother":2,"lady":3,"smart":4]
dictionary["keep"]
dictionary["brother"]
dictionary["lady"]
dictionary["smart"] = nil
print(dictionary)



//
//#3. Выполнить 5 задач из раздела 8kyu на сайте codewars.com
//Задачи выбираете сами
//
//Критерии приемки:
//Код каждого студента должен быть уникальным
//Весь проект должен находиться в github (Все решения задач должны находиться в одном проекте так-же в коде должны комментарии которые доказывают работоспособность вашего кода)
//
//
