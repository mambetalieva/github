
var realestates = [RealEstate]()
var apCount = 0
var stCount = 0
var gCount = 0
var mansion = Apartments(square: 233.4, price: 2500000, location: "Bishkek", amountOfResidents: 12)
var stock = Stock(square: 54.4, price: 850000, location: "Tokmok", company: "Pentouse")
var garage = Garage(square: 100.2, price: 20000, location: "Ankara", car: "Mers", basement: true)

realestates.append(mansion)
realestates.append(stock)
realestates.append(garage)

for i in realestates{
    i.showInfo()
    if i is Apartments{
        apCount+=1
    }else if i is Stock{
        stCount+=1
    }else if i is Garage{
        gCount+=1
    }
}
print("amount of apartments: \(apCount),amount of stocks:\(stCount),amount of garages:\(gCount)")

for item in realestates {  if item is Apartments{
    print("Apartment")
    item.showInfo()

}else if item is Stock {
    print("Stock")
    item.showInfo()

}else if item is Garage {
    print("Garace")
    item.showInfo()
}
}

showComfortApartments(apartment:  "THIS APARTMENT WITH ALL CONVINIENCES")





//#1. Создать класс Недвижимость
//Параметры: Площадь, цена, адрес
//Методы: Изменение цены, отображение информации
//Наследовать от него классы: Квартира, Склад, Гараж
//
//В классе Квартира добавить параметр: количество жильцов, массив с удобствами(например: сан.узел, интернет и тд)
//Переопределить метод из базового класса и отобразить все данные об объекте в одной строке
//В классе склад доп.параметры - какой компании пренадлежит и массив с имеющимися товарами на складе
//Добавить метод, отображающий товары на складе
//
//В классе Гараж добавить параметры - какая машина находится внутри и есть ли подвал внутри гаража
//Доступ к свойствам ограничить модификаторами доступа
//
//В main создать массив недвижимости и отобразить какого типа недвижимости сколько имеется и по каждому из типов выдать полную информацию
//Критерии приемки:
//Код каждого студента должен быть уникальным
//Весь проект должен находиться в github (Все решения задач должны находиться в одном проекте так-же в коде должны комментарии которые доказывают работоспособность вашего кода)
//

