//
//  FileManager.swift
//  PracticalWork
//
//  Created by Yaroslav Bogomolov on 16.05.2021.
//

import Foundation

func saveToFile() {
    guard let pathOut = Bundle.main.path(forResource: "out", ofType: "txt") else {return}
    do {
        try "vanes".write(toFile: pathOut, atomically: true, encoding: .utf8)
    } catch let error {
        print(error.localizedDescription)
    }
}

func readFromFile() -> String {
    guard let pathOut = Bundle.main.path(forResource: "out", ofType: "txt") else {return "failed to get path"}
    do {
        let string = try String(contentsOfFile: pathOut, encoding: String.Encoding.utf8)
        return string
    } catch let error {
        print(error.localizedDescription)
        return "failed to get file"
    }
}
