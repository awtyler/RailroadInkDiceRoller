//
//  Dice.swift
//  Railroad Ink Dice Roller
//
//  Created by Aaron on 5/20/20.
//  Copyright © 2020 Rhindon Computing. All rights reserved.
//

import Foundation
import SwiftUI

enum DieType: Int {
    case basic3 = 0
    case basic1
    case river
    case lake
    case lava
    case meteorDirection
    case meteorDistance
    
    func getRandomFace() -> DieFace {
        switch Int.random(in: 0...5) {
        case 0: return .face0(type: self)
        case 1: return .face1(type: self)
        case 2: return .face2(type: self)
        case 3: return .face3(type: self)
        case 4: return .face4(type: self)
        case 5: return .face5(type: self)
        default:
            //Needed to make switch exhaustive, but can't be called
            return .face0(type: self)
        }
    }
    

    
}

enum DieFace {
    case face0(type: DieType)
    case face1(type: DieType)
    case face2(type: DieType)
    case face3(type: DieType)
    case face4(type: DieType)
    case face5(type: DieType)
    
    var image: Image {
        return Image(self.imageName)
    }
    
    var imageName: String {
        switch self {
        case let .face0(type): return "\(type.rawValue)_\(0)"
        case let .face1(type): return "\(type.rawValue)_\(1)"
        case let .face2(type): return "\(type.rawValue)_\(2)"
        case let .face3(type): return "\(type.rawValue)_\(3)"
        case let .face4(type): return "\(type.rawValue)_\(4)"
        case let .face5(type): return "\(type.rawValue)_\(5)"
        }
    }
    
}


