//
//  Module.swift
//  Created by Yaroslav Bogomolov on 16.05.2021.
//

import Foundation

// 2) Ввод кол-ва элементов массива
func enterValidCount() -> Int {
    print("Введите количество элементов массива:")
    // 4) Проверка на Int
    guard let count = Int(readLine() ?? "") else {
        print("\nВведено не целое число")
        return enterValidCount()
    }
    // Прооверка на диапозон доступных значений
    if count > 100 || count < 0 {
        print("\nВведено не верное кол-во элементов! Доступный диапозон от 0 до 100")
        return enterValidCount()
    }
    return count
}

// 5) Функция возращает случайные целые числа в диапазоне от -50 до 50
func randomNumber() -> Int {
    return Int.random(in: -50...50)
}

// Конвертируем массив в String
func toString(array: [Int]) -> String {
    var stringArray = String()
    array.forEach { number in
        stringArray += "\(number)\n"
    }
    return stringArray
}

// Сохраняет данные в файл
func saveToFile() {
    guard let pathOut = Bundle.main.path(forResource: "output", ofType: "txt") else { return } // Путь к файлу
    do{
        try toString(array: array).write(toFile: pathOut, atomically: true, encoding: .utf8)
    } catch let error {
        print(error.localizedDescription, "error to save")
    }
}

// Читает данные из файла
func readFromFile() -> String {
    guard let path = Bundle.main.path(forResource: "output", ofType: "txt") else { return "Файл не найден"} // Путь к файлу
    do{
        let string = try String(contentsOfFile: path, encoding: String.Encoding.utf8)
        return string
    } catch let error {
        print(error.localizedDescription, "error to save")
        return "Error"
    }
}
// Конвертирует строку в масив целых чисел
func toArray(from string: String) -> [Int] {
    let array = string.split(separator: "\n")
    var intArray = [Int]()
    array.forEach { element in
        if let number = Int(element){
            intArray.append(number)
        }
    }
    return intArray
}
// Выводит сумму массива на экран
func showAmount(array: [Int]) {
    print("Сумма всех чисел  массива: \(array.reduce(0, +))")
}

