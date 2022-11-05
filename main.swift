//  Created by Каира on 4.11.2022.
import Foundation

//ДЗ №5 Массивы
//
//Используя функции, циклы, условные операторы, массивы создать следующие программы
//
//№1. Через readLine вводится любое количество слов
//После чего эти слова сортируются по количеству символов
//Далее отображается самое короткое слово(если несколько с таким количеством - отобразить все) и так же самое длинное
//Решение:
var zMaxArray = [ String]()
var zMinArray = [String]()
var maxWordArray = [String]()
var minWordArray = [String]()
var w = ""
var similarWord = ""
var countAllow = 0
var maxCountAllow = 0
var minCountAllow = 0
var maxWord = ""
var minWord = ""
func sort(words:[String]){
    print(words)
    for item in words{
        for _ in item{
            countAllow += 1
            if countAllow >= maxCountAllow{
                maxCountAllow = countAllow
                maxWord = item
            }
        }
        countAllow = 0
        zMaxArray.append(maxWord)
    }
    if zMaxArray.count != 1{
        for _ in 1...zMaxArray.count{
            if zMaxArray[0].count < zMaxArray[zMaxArray.count-1].count{
                zMaxArray.removeFirst()
            }
        }
        for i in zMaxArray{
            w+=i
            if w != similarWord{
                maxWordArray.append(w)
            }
            similarWord = w
            w = ""
        }
        print(maxWordArray)
    }else{
        print(zMaxArray)
    }
}
if zMinArray.count != 1{
    for _ in 1...zMinArray.count{
        if zMinArray[0].count <= zMinArray[zMinArray.count-1].count{
            zMinArray.removeFirst()
        }
    }
}

for _ in zMinArray{
    
        countAllow += 1}
    if countAllow <= minCountAllow{
        minCountAllow = countAllow
    
    }
    
    countAllow = 0
    zMinArray.append(minWord)

if zMinArray.count != 1{
    for _ in 1...zMinArray.count{
        if zMinArray[0].count > zMinArray[zMinArray.count-1].count{
            zMinArray.removeFirst()
        }
    }
   
    for i in zMinArray{
        w+=i
        if w != similarWord{
            minWordArray.append(w)
        }
        similarWord = w
        w = ""
    }
    print(minWordArray)
}else{
    print(zMinArray)
    }

let massiv = readLine()?.components(separatedBy: "")
sort(words: massiv!)
//
//№2. Составить список из 20 контактов (Имя - номер телефона)
//Отсортировать по алфавиту (А-Я) и отобразить на какую букву сколько контактов сохранено
//var contactList = [[String]]()
//var sortedContactList = [[String]]()
//func contactSorting(nameNum:String){
//    let firstLetter = nameNum.first!
//    var a = false
//    for (index,item) in contactList.enumerated(){
//        for (index2,item2) in item.enumerated(){
//            if index2 == 0 && item2 == String(firstLetter) && a == false{
//                contactList[index].append(nameNum)
//                a = true
//            }else{
//                continue
//            }}}
//    if a == false{
//        var contacts = [String]()
//        contacts.append(String(firstLetter))
//        contacts.append(nameNum)
//        contactList.append(contacts)
//    }
//}
//
//contactSorting(nameNum: "Kunduz - 0999053194")
//contactSorting(nameNum: "Umma - 0995909495")
//contactSorting(nameNum: "Fatima-0702504069")
//contactSorting(nameNum: "Shifu-0123456789")
//contactSorting(nameNum: "Tinatin-0507507228")
//contactSorting(nameNum: "Nazar-0999909090")
//contactSorting(nameNum: "Farida-0702345463")
//contactSorting(nameNum: "Bermet-0777775599")
//contactSorting(nameNum: "Kaan-0707228132")
//contactSorting(nameNum: "Arman-0908123654")
//contactSorting(nameNum: "Selim-0908263896")
//contactSorting(nameNum: "Aza-0702504069")
//contactSorting(nameNum: "Dima-0990456789")
//contactSorting(nameNum: "Gitler-0507507228")
//contactSorting(nameNum: "Nazar-0999909090")
//contactSorting(nameNum: "Putin-0702345463")
//contactSorting(nameNum: "Witch-0777775599")
//contactSorting(nameNum: "Eli-0550504020")
//contactSorting(nameNum: "Melis-0551593937")
//contactSorting(nameNum: "Japarov-0555555500")
//let alfavit = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
//var b = 0
//
//repeat{
//    for (index0,item0) in contactList.enumerated(){
//        for item1 in item0{
//            for item2 in 0..<alfavit.count{
//                if item1 == alfavit[item2]{
//                    if item2 <= b{
//                        sortedContactList.append(item0)
//                        contactList.remove(at: index0)
//                        b = item2
//                    }else{
//                        continue
//                    }}}}}
//    b += 1
//
//} while contactList.count != 0
//for (index2,item2)in sortedContactList.enumerated(){
//    print("\(item2[0]) -\(sortedContactList[index2].count - 1)контакта")
//}
//print(sortedContactList)
//
//№3. Составить мини-игру “Викторина” используя массивы для записи вопросов и ответов
//В игре должно быть 5 раундов по 3 вопроса
//Так же должны быть несгораемые суммы
//Так же в конце если человек проиграл - показать какой ответ был верным и отобразить выигрыш и сколько раундов было выиграно
//
//
//Критерии приемки:
//Код каждого студента должен быть уникальным
//Весь проект должен находиться в github (Все решения задач должны находиться в одном проекте так-же в коде должны комментарии которые доказывают работоспособность вашего кода)


//var array = [Int]()
//
//for i in 0...100{
//    array.append(i)
//}
//
//print(array)
//
//for (index,item) in array.enumerated(){
//    if item % 2 == 0 && item > 10 && item < 50{
//        print("четный элемент \(item)")
//    }else if item % 2 != 0 && item > 10 && item < 50{
//        print(item)
//        array.remove(at: index)
//    }
//}
//
//print("array: \(array)")
