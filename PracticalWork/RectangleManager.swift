//
//  RectangleManager.swift
//  PR4
//
//  Created by Yaroslav Bogomolov on 16.05.2021.
//

import Foundation



class Rectangles {
    var store = [Rectangle]()
    // Добавление прямоульников в массив
    func addRectangles(){
        print("Введите кол-во прямоульников")
        guard let count = Int(readLine() ?? "") else {
            print("Ошибка ввода!")
            addRectangles()
            return
        }

        for i in 1...count {
            print("Введите название прямоульников №\(i): ")
            let name = readLine()
            print("Введите сторону А: ")
            let sideA = readLine() ?? "0"
            print("Введите сторону B: ")
            let sideB = readLine() ?? "0"
            // Проверка на верный ввод данных
            if let sideAunwrap = Double(sideA).map({ CGFloat($0) }),
               let sideBunwrap = Double(sideB).map({ CGFloat($0) }),
               let nameUnwrap = name {
                // Добавление в массив нового объекта
                store.append(Rectangle(sideA: sideAunwrap, sideB: sideBunwrap, name: nameUnwrap))
            } else {
                print("error: Введены не верные данные")
            }
            print()
        }
    }

    // Возвращает информацию в табличном представлении
    func getParametersRectangles() -> String {
        if store.isEmpty {return "Массив пуст"} // Если массив пустой - выходим из функции
        var output = "Имя     Площадь      Периметр\n"
        store.forEach { rectangle in
            output += "\(rectangle.name)     \(rounding(number: rectangle.getArea()))²          \(rectangle.getPerimetr())\n"
        }
        return output
    }
    // Выводит параметры на экран
    func showParametrs() {
        print(getParametersRectangles())
    }

    // Сохраняет данные в файл
    func saveToFile() {
        guard let pathOut = Bundle.main.path(forResource: "output", ofType: "txt") else { return } // Путь к файлу
        do{
            try getParametersRectangles().write(toFile: pathOut, atomically: true, encoding: .utf8)
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
}




