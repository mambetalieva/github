import Foundation

//#1. Создать класс Магазин
//Свойства: Название, Площадь, Расположение, Часы работы, массив с товарами
//Создать класс Товар

class Store{
    var name: String
    var Square: Int
    var location: String
    var schedule: String
    var product = [Product]()
    init(name: String, Sguare: Int, location: String, schedule: String) {
        self.name = name
        self.Square = Sguare
        self.location = location
        self.schedule = schedule
    }
    func printInfo(){
        print("name: \(name), Square:\(Square), location: \(location), schedule: \(schedule)")
        for i in product{
            print("name:\(i.name), amount: \(i.amount), prise: \(i.prise)")
        }
    }
    func addToProduct(product2: Product){
        var test = true
        for i in product {
            if product2.name == i.name && product2.prise == i.prise{
                test = false
                i.amount += product2.amount
            }
        }
        if test != false{
            product.append(product2)
        }
    }
}
class Product {
    var name: String
    var amount: Int
    var prise: Int
    init(name: String, amount: Int, prise: Int) {
        self.name = name
        self.amount = amount
        self.prise = prise
    }
    
}
class AutoParts: Store{
    var autoParts = [Product]()
    override init(name: String, Sguare: Int, location: String, schedule: String) {
        super.init(name: name, Sguare: Sguare, location: location, schedule: schedule)
    }
    override func printInfo(){
        print("name: \(name), Square:\(Square), location: \(location), schedule: \(schedule)")
        for i in autoParts{
            print("name:\(i.name), amount: \(i.amount), prise: \(i.prise)")
        }
    }
   override  func addToProduct(product2: Product){
        var test = true
        for i in autoParts {
            if product2.name == i.name && product2.prise == i.prise{
                test = false
                i.amount += product2.amount
            }
        }
        if test != false{
            autoParts.append(product2)
        }
    }
}
class Cloth: Store{
    var cloths = [Product]()
    override init(name: String, Sguare: Int, location: String, schedule: String) {
        super.init(name: name, Sguare: Sguare, location: location, schedule: schedule)
    }
   override  func printInfo(){
        print("name: \(name), Square:\(Square), location: \(location), schedule: \(schedule)")
    
       for i in cloths{
           print("name:\(i.name), amount: \(i.amount), prise: \(i.prise)")
       }
    }
    override  func addToProduct(product2: Product){
         var test = true
         for i in cloths {
             if product2.name == i.name && product2.prise == i.prise {
                 test = false
                 i.amount += product2.amount
             }
         }
         if test != false{
            cloths.append(product2)
         }
     }
}
var shop = Store(name: "Magnit", Sguare: 102, location: "Kant" , schedule: " 9:00 - 21:00")
var cloth = Cloth(name: "Best", Sguare: 300, location: "Bishkek", schedule: "10:00 - 20:00")
var food = Product(name: "Albeni", amount: 72, prise: 85)
var dress = Product(name: "Dress", amount: 1, prise: 40000)
var pants = Product(name: "Classic", amount: 2, prise: 5500)
var dress2 = Product(name: "Dress", amount: 5, prise: 40000)
cloth.addToProduct(product2: dress)
cloth.addToProduct(product2: dress2)
cloth.addToProduct(product2: pants)
cloth.printInfo()
//Свойства: Название товара, кол-во. Цена товара
//После чего путём наследования от класса Магазин создать следующие классы: Магазин автозапчастей, Магазин одежды и заполнить их соответствующими параметрами
//
//
//
//Так же в конце должен быть метод, который будет отображать следующую информацию:
//
//Название магазина. Площадь.
//Расположение. Часы работы.
//Наименование товара. Кол-во товара. Цена товара (Если у вас два и более одинаковых по названию товаров - соединить)


