//
//  main.swift
//  PracticalWork5
//
//  Created by Yaroslav Bogomolov on 16.05.2021.
//

import Foundation

// 1) Массив целых чисел
var array = [Int]()

let count = enterValidCount()
// Заполнение массива случайными целыми числами
for _ in 0 ..< count {
    array.append(randomNumber())
}

// Сохраняем
saveToFile()
let arrayFromFile =  toArray(from: readFromFile())
print("Элементы массива из файла:")
print(arrayFromFile)
showAmount(array: arrayFromFile)
