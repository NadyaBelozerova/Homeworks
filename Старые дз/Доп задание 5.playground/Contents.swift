import UIKit

var str = "Hello, playground"

//Задание 2. Привести по два примера с использованием композиции и агрегации. Объяснить, почему в каждом примере использована композиция/агрегация.
// Агрегация и композиция это включение одного класса в другой. Разница в том, что при композиции класс включаемый в другой класс сам по себе не может существовать, а только внутри другого класса. Агрегация же позволяет использовать тот класс, который включается в другой класс и в других местах с другими классами

//Это пример из видео. Правильно ли, что в свифте это будет выглядеть так?
class Cap{
    
    var color = "red"
    func inspectTheCap(){
        print ("Моя кепка \(color)")
    }
}

class Human{
    public func think(){
        brain.think()
    }
    
    public func inspectTheCap(){
        cap.inspectTheCap()
    }
    class Brain{
        public func think(){
            print("Я думаю")
        }
    }
    var brain = Brain()
    var cap = Cap()
}

var human1 = Human()
human1.think()
human1.inspectTheCap()

//Пример 1
class Driver{  //водитель автомобиля (Driver) может существовать отдельно от машины (Car) - это пример агрегации
    private var cars: [Car] = []
    func addCar(_ car: Car) {}
    func removeCar(_ car: Car) {}
    
    func stop(){
        print("Driver presses the brakes")
    }
}

class Car {
    public func toBrake(){
        brakes.toBrake()
    }
    
    public func stopTheCar(){
        driver.stop()
    }
    class carBrakes{ //автомобильные тормоза (carBrakes) являются частью машины (Car) и без нее бесполезны - это пример композиции
       public func toBrake(){
            print("Car is braking")
        }
    }
    var brakes = carBrakes()
    var driver = Driver()
}
var car1 = Car()
car1.toBrake()
car1.stopTheCar()

//Пример 2
class PhoneCase { // чехол для телефона существует отдельно от телефона и может быть надет на другой телефон (агрегация)
    var colorOfCase = "синий"
    func hasCase() {
        print ("На телефоне \(colorOfCase) чехол")
    }
}

class PhoneCharger { // зарядник так же существует отдельно и им можно зарядить другой такой же телефон (агрегация)
    func hasCharger() {
        print ("Телефон заряжается")
    }
}

class MobilePhone{
    func makePhoto() {
        camera.makePhoto()
    }
    func playMusic(){
        music.playMusic()
    }
    
    func hasCase() {
        case1.hasCase()
    }
    
    func hasCharger() {
        charge.hasCharger()
    }
    
    class PhoneCamera { //камера в телефоне является неотделимой частью телефона (композиция)
        func makePhoto() {
            print ("Телефон делает фото")
        }
    }
    class Player { //плеер в телефоне так же является частью телефона (композиция)
        func playMusic(){
             print ("Телефон играет музыку")
        }
    }
    var camera = PhoneCamera()
    var case1 = PhoneCase()
    var music = Player()
    var charge = PhoneCharger()
}

var phone = MobilePhone()
phone.makePhoto()
phone.playMusic()
phone.hasCase()
phone.hasCharger()


//Задание 3

print("Личный кабинет")
struct User {
    var firstName: String
    var lastName: String
    var phoneNumber: String
    var email: String
    var dateOfBirth: String
    var genderOfUser: String
    
    func name() {
        print ("ФИО: \(firstName) \(lastName)")
    }
    func phone() {
        print ("Номер телефона: \(phoneNumber)")
    }
    func mail() {
        print("Email: \(email)")
    }
    func birthday() {
        print("Дата рождения: \(dateOfBirth)")
    }
    
    func gender() {
        print("Пол: \(genderOfUser)")
    }
}

var user1 = User(firstName: "Надежда", lastName: "Белозерова", phoneNumber: "+79091111111", email: "nb@gmail.com", dateOfBirth: "20 августа 1990", genderOfUser: "Женский")
user1.name()
user1.phone()
user1.mail()
user1.birthday()
user1.gender()




print("Товар")

class Book{
    var name: String
    var art: Int
    var price: Int
    var desc: String
    var author: String
    var publisher: String
    init(name: String, art: Int, price: Int, desc: String, author: String, publisher: String) {
        self.name = name
        self.art = art
        self.price = price
        self.desc = desc
        self.author = author
        self.publisher = publisher
    }
    func art1(){
        print("Артикул: \(art)")
    }
    func price1(){
        print("Цена: \(price) руб.")
    }
    func desc1(){
        print("Описание: \(desc)")
    }
    func author1(){
        print("Автор: \(author)")
    }
    func pub1(){
           print("Издательство: \(publisher)")
       }
}

var book1 = Book(name: "Пиши, сокращай: Как создавать сильные тексты", art: 4707313, price: 550, desc: "Максим Ильяхов и Людмила Сарычева на конкретных примерах показывают, что такое хорошо и что такое плохо в информационных, рекламном, журналистском и публицистическом тексте.", author: "Сарычева Л.", publisher: "Альпина")
print(book1.name)
book1.art1()
book1.price1()
book1.desc1()
book1.author1()
book1.pub1()


/*var book2 = Book(name: "Сказать жизни ДА!: психолог в концлагере", art: 8014113, price: 300, desc: "Эта удивительная книга сделала ее автора одним из величайших духовных учителей человечества в XX веке.", author: "Виктор Франкл", publisher: "Альпина")
print(book2.name)
book2.art1()
book2.price1()
book2.desc1()
book2.author1()
book2.pub1()*/



print("Заказ")
class Order{
    var nameOfProduct: String
    var photoOfProduct: String
    var count: Int
    var price: Int
    init(nameOfProduct: String, photoOfProduct: String, count: Int,  price: Int) {
        self.nameOfProduct = nameOfProduct
        self.photoOfProduct = photoOfProduct
        self.count = count
        self.price = price
    }
    
    func nameOfOrder(){
        print("Наименование: \(nameOfProduct)")
    }
    func countOfProduct(){
        print("Количество: \(count)")
    }
    
    func summary(){
        print("Сумма заказа: \(count * price) руб")
    }
    

    
}
   
var order1 = Order(nameOfProduct: "\(book1.name)", photoOfProduct: "Фото", count: 2, price: book1.price)
order1.nameOfOrder()
order1.countOfProduct()
order1.summary()

/*var order2 = Order(nameOfProduct: "\(book2.name)", photoOfProduct: "Фото", count: 1, price: book2.price)
order2.nameOfOrder()
order2.countOfProduct()
order2.summary()*/

class Delivery{
     enum WayOfDelivery: String{
         case courier = "Курьер"
         case pickup = "Самовывоз"
}
 
  
     var dateOfDelivery: String
     var adress: String
     init(dateOfDelivery: String, adress: String) {
         self.dateOfDelivery = dateOfDelivery
         self.adress = adress
     }
}
        
         
 
var delivery1 = Delivery(dateOfDelivery: "5 сентября 2020", adress: "Екатеринбург, Степана Разина 2-222")
var deliveryMethod = Delivery.WayOfDelivery.courier.rawValue
print("Способ доставки: \(deliveryMethod)")
        switch deliveryMethod {
        case Delivery.WayOfDelivery.courier.rawValue:
            print("Доставка заказа \(delivery1.dateOfDelivery) по адресу \(delivery1.adress)")
        default:
            print("Самовывоз заказа: пункт выдачи по адресу Екатеринбург, 8 Марта, д. 55 c 8:00 до 22:00")
        }


class Payment{
    enum WayOfPay: String{
        case online = "Картой онлайн"
        case receiptByCash = "При получении наличными"
        case receiptByCard = "При получении картой"
    }
   
}
var paymentMethod = Payment.WayOfPay.online.rawValue
print("Способ оплаты: \(paymentMethod)")




print("Кассовый чек")

class Cheсk: Order{
    var dateOfOrder: String
    var number: Int
    var seller: String
    var taxpayerNumber: Int
    init(dateOfOrder: String, number: Int, seller: String, taxpayerNumber: Int, nameOfProduct: String, photoOfProduct: String, count: Int, price: Int) {
        self.dateOfOrder = dateOfOrder
        self.number = number
        self.seller = seller
        self.taxpayerNumber = taxpayerNumber
        super.init(nameOfProduct: nameOfProduct, photoOfProduct: photoOfProduct, count: count, price: price)
    }
    func date(){
        print("Приход: \(dateOfOrder)")
    }
    func number1(){
        print("Чек №: \(number)")
    }
    func seller1(){
        print("Продавец: \(seller)")
    }
    func taxNum(){
           print("ИНН: \(taxpayerNumber)")
       }
   
    func tax(){
        print("В том числе НДС: \(Int(Double(count*price)*0.2)) руб")
    }
    
}

var check1 = Cheсk(dateOfOrder: "4.09.2020 20:15", number: 765, seller: "ООО Вайлдберриз 142715, Московская область, Ленинский район, деревня Мильково, владение 1", taxpayerNumber: 7721546864, nameOfProduct: "\(order1.nameOfProduct)", photoOfProduct: "\(order1.photoOfProduct)", count: order1.count, price: order1.price)
check1.date()
check1.number1()
check1.seller1()
check1.taxNum()
check1.nameOfOrder()
check1.countOfProduct()
check1.summary()
check1.tax()

