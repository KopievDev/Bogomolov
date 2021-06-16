//
//  main.swift
//  PracticalWork
//
//  Created by Yaroslav Bogomolov on 16.05.2021.
//

import Foundation

// Создаем массив хранилище прямоугольников
let rectangles = Rectangles()
// 1) Добавляем в него прямоугольники
rectangles.addRectangles()
// 2) Выводим параметры на экран
rectangles.showParametrs()
// 3) Сохраняем объекты в файл
rectangles.saveToFile()
// 4) Изменяем характеристики третьей фигуры
rectangles.store[2].edit()
rectangles.saveToFile()
// 5) Выводим на экран информацию их файла
print(rectangles.readFromFile())
