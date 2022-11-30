import Foundation

var check3 = DataBase()
var check2 = DataBase()

check3.addToTeacher(teacher2:Teacher(name: "Vera",   surname: "Nikolaevna", age: 52, subject: "History"))

check3.addToTeacher(teacher2: Teacher(name: "Mira",   surname: "Begalievna", age: 43, subject: "Literature"))

check3.addToTeacher(teacher2: Teacher(name: "Melisa", surname: "Poyraz",     age: 32, subject: "Tukish language"))
check3.addToTeacher(teacher2: Teacher(name: "Ruslan", surname: "Sharshenov", age: 23, subject: "IOS"))


check3.findTeacher(name: "Ruslan", surname: "Sharshenov")
              


check3.addToStudents(student2: Student(name: "Ali",    surname: "Azimov",       age: 11, grade: 5))
              
check2.addToStudents(student2: Student(name: "Ilyaz",  surname: "Abakirov",     age: 12, grade: 4))

check2.addToStudents(student2: Student(name: "Dima",   surname: "Ivanov",       age: 10, grade: 3))

check2.addToStudents(student2: Student(name: "Ivan",   surname: "Ivanov",       age: 8, grade: 5))

check2.addToStudents(student2: Student(name: "Dana",   surname: "Bekesov",      age: 11, grade: 4))

check2.addToStudents(student2: Student(name: "Simbat", surname: "Asanova",      age: 12, grade: 5))

check2.addToStudents(student2: Student(name: "Alena",  surname: "Aleksandrovna",age: 12, grade: 5))

check2.addToStudents(student2: Student(name: "Argen",  surname: "Taalaibekov"  ,age: 11, grade: 4))

check2.addToStudents(student2: Student(name: "Deniz",  surname: "Maratova",     age: 10, grade: 3))

check2.addToStudents(student2: Student(name: "Vera",   surname: "Nikolaevna",   age: 11, grade: 2))

check2.countStudents()
check3.countTeachers()
check2.findStudent(name: "Alai", surname: "Azimov", grade: 5)









//check.countTeachers()

//#1. Создать класс DataBase.
//
//Внутри создать  2 массива типа Students и Teachers(создать эти 2 класса(модели), потом использовать)
//
//Для каждого из классов, касающихся базы данных должны быть методы для добавления, удаления и считывания учеников/учителей.
//Другими способами ничего изменяться не должно
//Так же добавить методы, позволяющие увидеть полный список(String) учеников и учителей.
//Пример:
//#1 - Имя Фамилия - Возраст - Класс - Средний балл
//
//№2.
//Создать класс Больница
//Создать класс пациент
//Добавить массив пациентов в больницу
//Создать приватную функцию поиска по фамилии и имени, добавление(с учетом что такого человека еще нет) и удаление с учетом если есть
//В main создать объект Больницы и протестировать ваш код разными кейсами

