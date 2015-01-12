// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Person {
    
    var Name:String
    var Age:Int
    
    init ()
    {
        self.Name = "Initial Name"
        self.Age = 10
    }
    
    func UpdateNameAndAge (nameToSet:String, ageToSet:Int)
    {
        self.Name = nameToSet
        self.Age = ageToSet
    }
    func IncreaseAge (ageToIncrease:Int) -> Int{
        self.Age += ageToIncrease
        return self.Age
    }
    
    //Class Methods
    class func AvgAge () -> Int
    {
        return 50
    }
}



var a = Person()
a.UpdateNameAndAge("Brad", ageToSet: 15) //El primer parametro no se le especifica el nombre, pero al segundo si.

var newAge = a.IncreaseAge(5)


var c = Person.AvgAge()