//
//  Math.swift
//  PracticalWork
//
//  Created by Yaroslav Bogomolov on 16.05.2021.
//

import Foundation

class Math {
    
    func firstFunction(of x: CGFloat) -> CGFloat {
        return cos(2*x)
    }
    
    func secondFunction(of x: CGFloat) -> CGFloat {
        return 1-((2*pow(x, 3))/(1-x*x))
    }
    
    func createTable() {
        // Находим шаг
        print("Введите а - начало интервала:")
        guard let a = readLine()?.toFloat() else {
            print("Ошибка ввода")
            return
        }
        print("Введите b - конец интервала:")
        guard let b = readLine()?.toFloat() else {
            print("Ошибка ввода")
            return
        }
        
        print("Введите n - кол-во разбиений:")
        guard let n = readLine()?.toFloat() else {
            print("Ошибка ввода")
            return
        }
        
        
        let h = ((b-a) / CGFloat(n))
        var x = a
        print("*****************************")
        print(" Таблица значений функции F1 ")
        print("*****************************")
        print(" X       F1")
        print("*****************************")
        
        while (x != b) {
            print(" \(x.rounding())    \(firstFunction(of: x).rounding())")
            x += h
        }
        x = a
        print("*****************************")
        print(" Таблица значений функции F2 ")
        print("*****************************")
        print(" X       F2")
        print("*****************************")
        
        while (x != b) {
            print(" \(x.rounding())    \(secondFunction(of: x).rounding())")
            x += h
        }
        x = a
        print("**********************************")
        print(" Таблица значений функций F1 и F2 ")
        print("**********************************")
        print(" X       F1       F2")
        print("**********************************")

        while (x != b) {
            print(" \(x.rounding())    \(firstFunction(of: x).rounding())     \(secondFunction(of: x).rounding())")
            x += h
        }
    }
}
