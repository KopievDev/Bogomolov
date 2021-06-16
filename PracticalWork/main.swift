//
//  main.swift
//  PracticalWork5
//
//  Created by Yaroslav Bogomolov on 16.05.2021.
//

import Foundation

// Создаем массив хранилище прямоугольников
let manager = ColoredRectangles()
// 2) Добавляем в него треугольники
manager.addRectangles()
// 3) Выводим параметры на экран
manager.showParametrs()
// 4) 3выводим отсортированные по цвету параметры треугольков
sorted(array: manager.store, color: "yellow")
