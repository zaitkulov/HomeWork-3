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



