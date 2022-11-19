import Foundation
//1.Задание Решение
//
//class Car{
//    var name: String
//    var color: String
//    var model: String
//    var speed: Int
//    func update(name:String, color:String,model: String,speed: Int){
//        print("\(name),\(color),\(model),\(speed)")
//    }
//
//    init(name: String, color: String, model: String, speed: Int) {
//        self.name = name
//        self.color = color
//        self.model = model
//        self.speed = speed
//        }
//    func printInfo(){
//        print("\(name),\(color),\(model),\(speed)")
//        print("Улучшение")
//        update(name: "Mercedes", color: "black", model: "220", speed: 240)
//    }
//}
//var car = Car(name: "Mercedes", color: "black", model: "210", speed: 220)
//car.printInfo()
//
//2. Создать класс "Магазин" и "Продукт" и задать им свойства
//Также создать функцию добавления продукта в магазин и отображения товаров в магазине
//class Narodnyi{
//    var name: String
//    var products: [ Producty] = [Producty]()
//    init(name: String) {
//        self.name = name
//    }
//    func printInfo(){
//        print(name)
//
//        for lisst in products{
//            print("producty - \(lisst.name) cost - \(lisst.price) count - \(lisst.count)")
//        }
//    }
//    func products(lisst:Producty){
//        products.append(lisst)
//    }
//}
//var Shop = Narodnyi(name: "Narodnyi")
//Shop.printInfo()
//class Producty{
//    var name: String
//    var price: Int
//    var count: Int
//    init(name: String, price: Int, count: Int) {
//        self.name = name
//        self.price = price
//        self.count = count
//    }
//    func printInfo(){
//        print("\(name),\(price),\(count)")
//    }
//}
//var  bounty = Producty(name: "bounty", price: 100, count: 200 )
//var skitlss = Producty(name:"skitlss", price: 85, count: 36)
//var sugar = Producty(name: "sugar", price: 82, count: 48)
//var milk = Producty(name: "milk", price: 65, count: 72)
//var sweets = Producty(name: "sweets", price: 650, count: 4)
//Shop.products(lisst: bounty)
//Shop.products(lisst: skitlss)
//Shop.products(lisst: sugar)
//Shop.products(lisst: milk)
//Shop.products(lisst: sweets)
//Shop.printInfo()

//3. Создать класс "Банк" и "Клиент"
//создать функции для:
//1) Подсчета клиентов банка
//2) Отображения баланса по ID или фамилии клиента
//3) Перевода средств от клиента к другому клиенту
class Bank{
    var name: String
    var currency: String
    var client:[Customer] = [Customer]()
    init(name: String, currency: String) {
        self.name = name
        self.currency = currency
    }
    func bank(){
        print("Банк - \(name), валюта \(currency)")
        
        for client1 in client {
            print("customer - \(client1.name) ID - \(client1.ID) wallet - \(client1.wallet) transfer - \(client1.transfer)")
        }
    }
    func men(clients:Customer){
        client.append(clients)
    }
}
    var vank = Bank(name: "Optima", currency: "сом")
vank.bank()

    class Customer{
        var name: String
        var ID: Int
        var wallet: Int
        var transfer: Int
        init(name: String, ID: Int, wallet: Int, transfer: Int) {
            self.name = name
            self.ID = ID
            self.wallet = wallet
            self.transfer = transfer
            
        }

        func printInfo(){
            print("name - \(name), ID - \(ID), wallet - \(wallet), transfer - \(transfer)")
        }
    }
    var base = Customer(name: "Ted", ID: 7788521, wallet: 200000, transfer: 40000)
base.printInfo()








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
