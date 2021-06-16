//
//  main.swift
//  PR5
//
//  Created by Yaroslav Bogomolov on 16.05.2021.
//


import Foundation

class ColoredRectangle: Rectangle {
    var color: String
    init(sideA: CGFloat, sideB: CGFloat, name: String, color: String) {
        self.color = color
        super.init(sideA: sideA, sideB: sideB,name: name)
    }
    override func showParameters() {
        super.showParameters()
        print("Цвет = \(color)")
    }
}

class ColoredRectangles {
    var store = [ColoredRectangle]()
    // Добавление прямоульников в массив
    func addRectangles(){
        print("Введите кол-во прямоульников")
        guard let count = Int(readLine() ?? "") else {
            print("Ошибка ввода!")
            addRectangles()
            return
        }
        
        for i in 1...count {
            print("Введите название прямоульника №\(i): ")
            let name = readLine()
            print("Введите сторону А: ")
            let sideA = readLine() ?? "0"
            print("Введите сторону B: ")
            let sideB = readLine() ?? "0"
            print("Введите цвет: ")
            let color = readLine()
            // Проверка на верный ввод данных
            if let sideAunwrap = Double(sideA).map({ CGFloat($0) }),
               let sideBunwrap = Double(sideB).map({ CGFloat($0) }),
               let nameUnwrap = name,
               let colorUnwrap = color{
                // Добавление в массив нового объекта
                store.append(ColoredRectangle(sideA: sideAunwrap, sideB: sideBunwrap, name: nameUnwrap, color: colorUnwrap))
            } else {
                print("error: Введены не верные данные")
            }
            print()
        }
    }
    
    // Выводит параметры на экран
    func showParametrs() {
        print(getParametersRectangles(array: store))
    }
}


