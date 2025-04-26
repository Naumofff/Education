import UIKit

// MARK: - Задание 1

var number = 5

func even () {
    var result = number % 2
    if result == 0 {
        print(number, "Четное число")
    } else {
        print(number, "Число не четное")
    }
}
even()

// MARK: - Задание 2

func division () {
    var div = number % 3
    if div == 0 {
        print("Число делится на 3")
    } else {
        print("Число не делится на 3")
    }
}
division()

// MARK: - Задание 3

var LessonArray: Array<Int> = []
for i in 1...100 {
    LessonArray.append(i)
}
print(LessonArray)

//MARK: - 4
var CountAr = 0
for i in LessonArray where (i % 2 == 0) || (i % 3 == 0) {
    LessonArray.remove(at: (i-1) - CountAr)
    CountAr += 1
}
print(LessonArray)
