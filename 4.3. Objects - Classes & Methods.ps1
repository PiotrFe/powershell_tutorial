# Creating a class in PS

class Student {
    [String]$name = "peter"
    [int32]$age = 34
}

$student_obj = New-Object Student

$student_obj.age = 38
$student_obj.name = "mark"


class MathClass {  
    [int32]$number1 = 0
    [int32]$number2 = 0

    [int32] Addition() {
        return $this.number1 + $this.number2
    }

    [int32] Subtraction() { 
        return $this.number2 - $this.number1
    }

    [String] toString() {
        return "This class allows to perform math operations"
    }
 }

$math_obj = New-Object MathClass

$math_obj.number1 = 10
$math_obj.number2 = 25
$math_obj.Addition()
$math_obj.Subtraction()
$math_obj.ToString()
$math_obj | Get-Member

class Car {
   static [int]$numberOfWheels = 4
   [String]$make
   [int]$numberOfDoors

   # we can overload the contructor

   Car([String]$make) {
       $this.make = $make
    }

   Car([String]$make, [int]$numberOfDoors) {
       $this.make = $make
       $this.numberOfDoors = $numberOfDoors
   }

   # to see the overloads, we can use [car]::new
}

$bmw = New-Object Car("bmw", 4)