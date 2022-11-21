import Foundation
//1.Задание Решение
//
class Car{
    var name: String
    var color: String
    var speed: Int
    var acceleration: Int
    func update(color2:String,speed2: Int, acceleration2: Int){
            
        color = color2
        speed += speed2
        acceleration -= acceleration2
    }
    
    init(name: String, color: String,speed: Int, acceleration: Int) {
        self.name = name
        self.color = color
        self.speed = speed
        self.acceleration = acceleration
    }
    func printInfo(){
        print("\(name),\(color),\(speed), \(acceleration)")
    }
}
var car = Car(name: "Mercedes", color: "black", speed: 220, acceleration: 5)
car.update(color2: "", speed2: 20, acceleration2: 2)
car.printInfo()

//2. Создать класс "Магазин" и "Продукт" и задать им свойства
//Также создать функцию добавления продукта в магазин и отображения товаров в магазине
class Narodnyi{
    var name: String
    var products: [ Producty] = [Producty]()
    init(name: String) {
        self.name = name
    }
    func printInfo(){
        print(name)

        for lisst in products{
            print("producty - \(lisst.name) cost - \(lisst.price) count - \(lisst.count)")
        }
    }
    func products(lisst:Producty){
        products.append(lisst)
    }
}
var Shop = Narodnyi(name: "Narodnyi")
Shop.printInfo()
class Producty{
    var name: String
    var price: Int
    var count: Int
    init(name: String, price: Int, count: Int) {
        self.name = name
        self.price = price
        self.count = count
    }
    func printInfo(){
        print("\(name),\(price),\(count)")
    }
}
var  bounty = Producty(name: "bounty", price: 100, count: 200 )
var skitlss = Producty(name:"skitlss", price: 85, count: 36)
var sugar = Producty(name: "sugar", price: 82, count: 48)
var milk = Producty(name: "milk", price: 65, count: 72)
var sweets = Producty(name: "sweets", price: 650, count: 4)
Shop.products(lisst: bounty)
Shop.products(lisst: skitlss)
Shop.products(lisst: sugar)
Shop.products(lisst: milk)
Shop.products(lisst: sweets)
Shop.printInfo()

//3. Создать класс "Банк" и "Клиент"
//создать функции для:
//1) Подсчета клиентов банка
//2) Отображения баланса по ID или фамилии клиента
//3) Перевода средств от клиента к другому клиенту
class Bank{
    var name: String
    var currency: String
    var client = [Customer]()
    init(name: String, currency: String) {
        self.name = name
        self.currency = currency
    }
    func addToBank(customer: Customer){
        client.append(customer)
    }
    func amountOfClients(){
        print("Количество клинтов:\(client.count)")
    }
    func showClientsBalanceById(Id1: Int){
        var a = true
        for client in client {
            if Id1 == client.ID{
                print("Баланс клиента:\(client.wallet)")
                a = false
            }
        }
        if a == true {
            print("Клиентов с таким ID не найдено")
        }
    }
    func showClientBalabceBySurname(surname: String){
        var s = true
        for client in client {
            if surname == client.surname{
                print("Баланс клиента:\(client.wallet)")
                s = false
            }
        }
        if s == true{
            print("Клиента с такой фамилией не найдено")
        }
    }
    
    func transfer(Id1: Int, Id2: Int, sum: Int){
        var client1:Int? = nil
        var client2:Int? = nil
        for (index,client) in client.enumerated(){
            if Id1 == client.ID{
                client1 = index
            }
            if Id2 == client.ID{
                client2 = index
            }
        }
        if client1 != nil && client2 != nil {
            client[client1 ?? 0].wallet -= sum
            client[client2 ?? 0].wallet += sum
        }else{ print("Таких клиентов не найдено")
        }
    }
}

    class Customer{
        var name: String
        var surname: String
        var ID: Int
        var wallet: Int
        init(name: String,surname: String,  ID: Int, wallet: Int) {
            self.name = name
            self.surname = surname
            self.ID = ID
            self.wallet = wallet
            
        }

        func printInfo(){
            print("name - \(name), ID - \(ID), wallet - \(wallet)")
        }
    }
 
var bank = Bank(name: "Optima", currency: "Som")
var customer = Customer(name: "Ali", surname: "Abakirov", ID: 0998766, wallet:200000)
var customer1 = Customer(name: "Dima", surname: "Aliev", ID: 0997766, wallet: 35000)
var customer2 = Customer(name: "Pak", surname: "Si", ID: 0922664, wallet: 65000)
var customer3 = Customer(name: "Elya", surname: "Nozri", ID: 0998776, wallet: 550400)
bank.addToBank(customer:customer)
bank.addToBank(customer:customer1)
bank.addToBank(customer:customer2)
bank.addToBank(customer:customer3)
bank.amountOfClients()
bank.showClientsBalanceById(Id1: 0997766)
bank.showClientBalabceBySurname(surname: "Abakirov")
bank.transfer(Id1: 0922664, Id2:  0998776, sum: 50)
bank.showClientsBalanceById(Id1: 0998776)


//Критерии приемки:
//Код каждого студента должен быть уникальным
//Весь проект должен находиться в github (Все решения задач должны находиться в одном проекте так-же в коде должны комментарии которые доказывают работоспособность вашего кода)





// dop.

//class Human{
//    var name: String
//    var age: Int
//    var country: String
//    var city: String
//    init(name: String, age: Int, country: String, city: String){
//        self.name = name
//        self.age = age
//        self.country = country
//        self.city = city
//    }
//    func printInfo(){
//        print("My name is - \(name)\nIm - \(age)\nIm from  - \(country)\nI live in - \(city)")
//    }
//}
//var human: Human? = Human(name:"Tina", age: 15, country: "Kyrgyzstan", city: "Kant")
//var person: Human? = Human(name:"Elya", age: 28, country: "Iran", city: "Tebriz")
//var person1:Human? = Human(name: "Melis", age: 25, country: "Turkiye", city: "Izmir")
//var person2: Human? = Human(name: "Tanya", age: 36, country: "Russia", city: "Beloyarsky")
//var person3: Human? = Human(name:"Nuri" , age: 19, country: "Kazakhstan", city: "Karaganda")
//human?.printInfo()
//person?.printInfo()
//person1?.printInfo()
//person2?.printInfo()
//person3?.printInfo()
//
