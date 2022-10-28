//
//  main.swift
//  HomeW4st lesson
//
//  Created by Каира on 28.10.2022.
//

import Foundation
//var secondString = ""
//for num in 1...1000{
//    if num % 10 == 2{
//        secondString += "\(num),"
//    }
//}
//print(secondString)
//
//var thirdString = ""
//for num in 1...1000{
//    if num % 10 == 3{
//        thirdString += "\(num),"
//    }
//}
//print(thirdString)
//
//var fourthString = ""
//for num in 1...1000 where num % 10 == 4{
//    fourthString += "\(num),"
//}
//print(fourthString)
//
//var fifthString = ""
//for num in 1...1000{
//    if num % 10 == 0{
//        continue
//    }
//    if num  % 10 == 5{
//        fifthString += "\(num),"
//    }
//}
//print(fifthString)

//var words = "Отвественность,скорость,день,действие,дерево,сайт,любовь,кошка,страсть,мудрость,форма,эрудиция,шторм,граница,механизм,белок,брокколи,киви,ромашка,горы"
//
//func printWords(string: String){
//    var currentWordLength = 0
//    var currentWord = ""
//    for word in string{
//        if word != ","{
//            currentWord += String(word)
//            currentWordLength += 1
//        }else{
//            print(" \(currentWord) - \(currentWordLength).")
//            currentWordLength = 0
//            currentWord = ""
//        }
//    }
//}
//printWords(string: words)

//калькулятор
func add(n1: Int, n2: Int) {
    print(n1 + n2)
}

func subtract(n1: Int, n2: Int) {
    print(n1 - n2)
}

func multiply(n1: Int, n2: Int) {
    print(n1 * n2)
}

func divide(n1: Int, n2: Int) {

    let decimalN1 = Double(n1)
    let decimalN2 = Double(n2)
    print(decimalN1 / decimalN2)

}

func calculate(){

    print("Введите первое число")
    let firstnumber = readLine()!

    let IntFirstNumber = Int(firstnumber)!

    print("Введите второе число")
    let secondNumber = readLine()!

    let IntSecondNumber = Int(secondNumber)!

    print("Введите действие: ( +,-,/, *):")
    let operation = readLine()!

    switch operation {
    case "+" :
        add(n1: IntFirstNumber, n2: IntSecondNumber)
    case "-":
        subtract(n1: IntFirstNumber, n2: IntSecondNumber)
    case "*":
        multiply(n1: IntFirstNumber, n2: IntSecondNumber)
    case "/":
        divide(n1: IntFirstNumber, n2: IntSecondNumber)
    default:
        print ("Подумайте, Попробуйте еще раз!")
        calculate()
    }

}

calculate()
calculate()
calculate()
calculate()

var x: Double
let angle = 90.0

let sinus = sin(90.0 * Double.pi / 180)
print("Sinus \(sinus)")

let cosinus = cos(90.0 * Double.pi / 180)
print("Cosinus \(cosinus)")

let tangent = tan(90.0 * Double.pi / 180)
print("Tangent \(tangent)")


//
//
////var adjasent = hypothenuze * math.cos(angle)
////var opposite = hypothenuze * math.sin(angle)
//
//
//
//
//
//
//
//
//
//
//












