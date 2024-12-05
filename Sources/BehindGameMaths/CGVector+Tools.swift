//
//  CGVector+Tools.swift
//  BehindGameMaths
//
//  Created by Victor Vasconcelos on 05/12/24.
//


import Foundation

public extension CGVector {
    func normalized() -> CGVector {
        let length = sqrt(dx * dx + dy * dy)
        guard length != 0 else { return CGVector(dx: 0, dy: 0) } // Evita a divisão por zero
        return CGVector(dx: dx / length, dy: dy / length)
    }
    
    static func * (left: CGVector, right: CGFloat) -> CGVector {
        return CGVector(dx: left.dx * right, dy: left.dy * right)
    }
    
    func magnitude() -> CGFloat {
        return sqrt(dx * dx + dy * dy)
    }
}
