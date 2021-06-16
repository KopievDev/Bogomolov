//
//  Framework.swift
//  PR5
//
//  Created by Yaroslav Bogomolov on 16.05.2021.
//

import Foundation

func sorted(array: [ColoredRectangle], color: String) {
    var sortedArray = [ColoredRectangle]()
    array.forEach { rectangle in
        if rectangle.color == color {
            sortedArray.append(rectangle)
        }
    }
    if !sortedArray.isEmpty {
        print(getParametersRectangles(array: sortedArray))
    } else {
        print("В массиве нет объекта с цветом \(color)")
    }
}

// Возвращает информацию в табличном представлении
func getParametersRectangles(array:[ColoredRectangle]) -> String {
    if array.isEmpty {return "Массив пуст"} // Если массив пустой - выходим из функции
    var output = "Имя     Площадь      Периметр     Цвет     `А`     `B`\n"
    array.forEach { rectangle in
        output += "\(rectangle.name)     \(rounding(number: rectangle.getArea()))²          \(rectangle.getPerimetr())"
        output += "       \(rectangle.color)      \(rectangle.sideA)     \(rectangle.sideB)\n"
    }
    return output
}
