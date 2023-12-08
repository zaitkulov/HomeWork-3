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


// 11.Задание: Подсчет гласных

func countVowels(_ str: String) -> Int {
    var result = Int()
    let vowels: [Character] = ["а", "у", "о", "ы", "и", "э", "я", "ю", "е"]
    for i in str {
        if vowels.contains(i) {
            result += 1
        }
    }
    return result
}
let result11 = countVowels("артем")
print (result11)


//12.Задание: Удаление дубликатов из массива

let arrayDublicateNumbers = [1,2,2,1,4,5]

func removeDublicates(array: [Int]) -> [Int] {
    var result = [Int]()
    for i in array {
        if !result.contains(i) {
            result.append(i)
        }
    }
    return result
}
let result12 = removeDublicates(array: arrayDublicateNumbers)
print (result12)


// 13. Задание: Сумма всех числе до N

func sumAllNumbers( number n : Int) -> Int {
    var result = Int()
    for i in 1...n {
        result += i
    }
    return result
}

let result13 = sumAllNumbers(number: 5)
print (result13)

// 14.Задание: Длинное слово в строке

func longWord( string str: String) -> String {
    let words = str.split(separator: " ")
    var result = String()
    for i in words {
        if i.count > result.count {
            result = String(i)
        }
    }
    return result
}
let result14 = longWord( string: "Длинное слово в строке")
print (result14)

// 15.Задание: Сокращение строки

func shortString(string str: String, number num: Int) -> String {
    num > 0 ? String(str.dropLast(num)) + "..." : str
}
let result15 = shortString(string: "Нумерация", number: 5)
print (result15)

//16.Задание: Объединение двух массивов без дубликатов

func sumArrayWithoutDublicates(array1: [Int], array2: [Int]) -> [Int] {
    Array(Set(array1 + array2)).sorted()
}
let arr1 = [1,2,2,3,4,5]
let arr2 = [4,6,9,1,2,3]

let result16 = sumArrayWithoutDublicates(array1: arr1, array2: arr2)
print (result16)

//17.Задание: Количество слов заданной длины

func numberOfWords(string str: String, number num: Int) -> Int {
    var result = Int()

    for i in str.split(separator: " ") {
        if i.count == num {
            result += 1
        }
    }
    return result
}
let result17 = numberOfWords(string: "Карл у Клары украл корала, а Клара у Карла украла кларнет", number : 4)
print (result17)

//18.Задние: Угадай число

var randomNumber = Int.random(in: 1...100)
func guessNumber(_ randomNumber: inout Int) {
    print("Загадано число от 1 до 100. Введите число, чтобы начать игру:\r")
    var count = 0
    game()
    func game() {
        let n = String(randomNumber)
        let userAnswer = readLine()
        count += 1
        guard let userAnswer else { return }
        if userAnswer == n {
            print("Поздравляю, вы угадали число!")
        } else if userAnswer < n {
            print("Загаднное число больше, чем ваше")
            game()
        } else if userAnswer > n {
            print ("Загаданное число меньше, чем ваше")
            game()
        }
    }
}
guessNumber(&randomNumber)


//19.Задание: Простой шифратор и дешифратор слов

func encode(_ text: String) -> String {
    let characters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    var encodeText = ""
    for char in text {
        let indexSymbolBeforeEncoding = characters.firstIndex(of: String(char))
        guard let indexSymbolBeforeEncoding else { return "" }
        let indexSymbolAfterEncoding = characters.count - 1 - indexSymbolBeforeEncoding
        encodeText.append(characters[indexSymbolAfterEncoding])
    }
    return encodeText
}

print (encode("Artyom"))

func decode(_ text: String) -> String {
let characters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
var decodeText = ""
for char in text {
    let indexSymbolBeforeEncoding = characters.firstIndex(of: String(char))
    guard let indexSymbolBeforeEncoding else { return "" }
    let indexSymbolAfterEncoding = characters.count - 1 - indexSymbolBeforeEncoding
    decodeText.append(characters[indexSymbolAfterEncoding])
        }
    return decodeText
}
print (encode("Shamil"))
       
//20.Задание: Функция вывода каждого слова строки на новой строке

func WordOnNewLine(_ str: String) {
    let words = str.split(separator: " ")
    for i in words {
        print (i)
    }
}
WordOnNewLine("Пришел, увидел, победил")

