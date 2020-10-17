import UIKit

var str = "Hello, playground"

//композиция
class Wings {
    func fly(){
        print ("Самолет летает, если есть крылья")
    }
}

class Airplan {
    private let wings = Wings() // если самолет уничтожится, то и его крылья тоже
    func fly(){
        wings.fly()
    }
}


let airplan = Airplan()
airplan.fly()

class Lead {
    func drawing(){
        print ("Карандаш рисует, если внутри есть грифель")
    }
}

class Pencil {
    private let pencilLead = Lead() // если карандаш сломать на части, то вместе с грифелем внутри
    func drawing(){
        pencilLead.drawing()
        
    }
}

let pencil = Pencil()
pencil.drawing()

//агрегация
class PetOwner {
    private let pet: [Pet] = []
    func takePet(_ pet: Pet){
        print("Взяли щенка из приюта")
    }
    func givePet(_ pet: Pet){
           print("Отдали щенка родственникам, если хозяин умер")
       }

}



class Pet {
 

}

let dogOwner = PetOwner()


class Furniture {
    
}



class House {
    private var furniture: [Furniture] = []
    func buyFurniture(_ furniture: Furniture){
        print("Купили мебель")
        
    }
    func soldFurniture(_ furniture: Furniture){
        print("Продали мебель")
    }
}

let house = House()



