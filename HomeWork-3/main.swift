//
//  main.swift
//  HomeWork-3
//
//  Created by Артем Заиткулов on 04.12.2023.
//

import Foundation

// 1. Задание: Сортировка чисел

var arrayNumbers = [5,2,7,9,0,1,4,3,8]

func filterNumbers(array: [Int]) -> [Int] {
    let size = arrayNumbers.count
    for i in 0..<size {
        var pass = (size-1)-i
        for j in 0..<pass {
            var key = arrayNumbers[j]
            if key > arrayNumbers[j+1] {
                let temp = arrayNumbers[j+1]
                arrayNumbers[j+1] = key
                arrayNumbers[j] = temp
            }
        }
    }
return arrayNumbers
}

let result = filterNumbers(array: arrayNumbers)
print (result)

// 2.Задание: Проверка на палиндром

func stringFunc(String str: String) -> Bool {
    if str == String(str.reversed()) {
        return true
    } else {
        return false
        }
    }
let result2 = stringFunc(String: "кабак")
print (result2)

// 3.Задание: Сумма элементов массива

let arrayNum = [1,2,3,4,5]

func sumArrayNum(array arr: [Int]) -> Int {
    var sum = 0
    for i in arr {
        sum += i
    }
    return sum
}

let result3 = sumArrayNum(array: arrayNum)
print(result3)

// 4. Задание: Конвертация температуры

func convertTemp(celsius: Double) -> Double {
    (celsius*9.0/5.0) + 32
}
let result4 = convertTemp(celsius: 27.0)
print(result4)


// 5.Задание: Записная книжка

let NoteBook = [
"Artyom, 89174827487, artyom@gmail.com",
"Shamil, 89176584344, shamil@yandex.ru",
"Islam, 89199874601, islam@mail.ru"
]

func searchName(name: String, in arr: [String]) -> String {
    for (index, value) in arr.enumerated() {
        if value.hasPrefix(name) {
            return arr[index]
        }
    }
    return " "
}

let result5 = searchName(name: "Shamil", in: NoteBook)
print(result5)

// 6.Задание: Перестановка элементов массива

let arrayNum2 = [1,0,0,0,2]

func switchNumbers(array: [Int]) -> [Int] {
    var res = arrayNum2
    let temp2 = res.last
    guard let temp2 else { return [ ]}
    res[res.count - 1] = res[0]
    res[0] = temp2
    return res
}

let result6 = switchNumbers(array: arrayNum2)
print(result6)

// 7.Задание: Форматирование строки

func formattingString( str: String) -> String {
    var res2 = [String]()
    
    for i in str.split(separator: " ") {
        res2.append(String(i.capitalized))
    }
    return res2.joined(separator: " ")
}
let result7 = formattingString(str: "как же я устал")
print(result7)


// 8.Задание: Конвертация дня недели

func convertDayOfWeek(day: String) -> Int {
    switch day {
    case "Понедельник":
        return 1
    case "Вторник":
        return 2
    case "Среда":
        return 3
    case "Четверг":
        return 4
    case "Пятница":
        return 5
    case "Суббота":
        return 6
    case "Воскресенье":
        return 7
    default: return 0
    }
}
let result8 = convertDayOfWeek(day: "Среда")
print(result8)

// 9.Задание: Уникальные символы

func uniqueSymbols(string str: String) -> Bool {
    Set(str).count == str.count
}
let result9 = uniqueSymbols(string: "errornil")
print (result9)

// 10.Задание: Слияние массивов

let array1 = [1,2,3]
let array2 = [4,5,6]

func mergeArray(array1: [Int], array2: [Int]) -> [Int] {
    array1 + array2
}
let result10 = mergeArray(array1: array1, array2: array2)
print (result10)


