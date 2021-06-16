//
//  main.swift
//  PracticalWork
//
//  Created by Yaroslav Bogomolov on 16.05.2021.
//

import Foundation

let firstBox = Rectangle(sideA: 3, sideB: 4, name: "bibo")
let secondBox = Rectangle(sideA: 1, sideB: 2, name: "bobo")
let thirdBox = Rectangle(sideA: 4, sideB: 6, name: "hoba")

firstBox.showParameters()
secondBox.showParameters()
thirdBox.showParameters()

secondBox.compareWith(a: thirdBox)
thirdBox.compareWith(a: firstBox)
firstBox.compareWith(a: secondBox)
