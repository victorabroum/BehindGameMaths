//
//  CGFloat.swift
//  BehindGameMaths
//
//  Created by Victor Vasconcelos on 05/12/24.
//


import Foundation

public extension CGFloat {
    static func lerp(min: CGFloat, max: CGFloat, t: CGFloat) -> CGFloat {
        let t = (t - min) / (max - min)
        return lerp(a: 0, b: 1, t: t)
    }
    
    static func lerp(a: CGFloat, b: CGFloat, t: CGFloat) -> CGFloat {
        return (1 - t) * b + t * a
    }
    
    var degreesToRadians: CGFloat {
        return self * .pi / 180.0
    }
    
    var radiansToDegrees: CGFloat {
        return self * 180.0 / .pi
    }
}
