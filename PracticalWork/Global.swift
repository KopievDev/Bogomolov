//
//  Global.swift
//  PracticalWork
//
//  Created by Ivan Kopiev on 16.06.2021.
//

import Foundation

extension CGFloat {
    func rounding() -> CGFloat {
        let stringNumber = String(format: "%.2f", self)
        guard let number = Double(stringNumber).map({ CGFloat($0) }) else {return 0}
        return number
    }
}

extension Double {
    func rounding() -> CGFloat {
        let stringNumber = String(format: "%.2f", self)
        guard let number = Double(stringNumber).map({ CGFloat($0) }) else {return 0}
        return number
    }
}

extension String {
    
    func toFloat() -> CGFloat? {
        guard let output = Double(self).map({ CGFloat($0) }) else {
            return nil
        }
        return output
    }
    func toInt() -> Int? {
        guard let output = Int(self) else {
            return nil
        }
        return output
    }
}

func rounding(number num: CGFloat) -> CGFloat {
    let stringNumber = String(format: "%.2f", num)
    guard let number = Double(stringNumber).map({ CGFloat($0) }) else {return 0}
    return number
}
