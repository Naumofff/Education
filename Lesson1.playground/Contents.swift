import UIKit
//Заание 1
let eqation = "(x^2)-2x-3=0"
let a: Double = 1
let b: Double = 2
let c: Double = 20


let disc = pow(b,2)-4*(a*c)
let x1 = (-b+sqrt(disc))/(2*a)
let x2 = (-b-sqrt(disc))/(2*a)
let x = -b/(2*a)

    if (disc > 0) {
        print("Корни уровнения\(eqation): X1= \(x1), X2=\(x2)")
    
    }else if (disc==0) {
        print("Корень уровнения \(eqation): X=\(x)")
    } else if (disc<0){
        print("У уравнения нет корней")
}



//Задание 2


let cat1:Double = 3
let cat2:Double = 4
let S = (cat1*cat2)/2
let gip = sqrt(pow(cat1,2)+pow(cat2,2))
let per = cat1+cat2+gip
    print("Площадь прямоугольного треугольника = \(S),гипотенуза = \(gip),периметр прямоугольного треугольника = \(per)")
   



//Задание 3

var summ: Float = 1000 //сумма депозита
var percent: Float = 5 // % годовых
var year: Int = 0
let perc = percent / 100

while year <= 4 {
    year += 1
    summ = summ + (summ * perc)
    print("Год \(year), Итоговая сумма=\(summ)")
}



