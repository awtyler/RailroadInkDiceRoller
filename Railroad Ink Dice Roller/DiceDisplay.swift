//
//  DiceDisplay.swift
//  Railroad Ink Dice Roller
//
//  Created by Aaron on 5/20/20.
//  Copyright © 2020 Rhindon Computing. All rights reserved.
//

import SwiftUI

struct DiceDisplay: View {

    @Binding var face: DieFace
    
    var body: some View {
        VStack {
            face.image
                .resizable()
                .aspectRatio(contentMode: .fit)
            .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
//            Text(face.imageName)
        }
    }
}

struct DiceDisplay_Previews: PreviewProvider {
    static let width: CGFloat = 50
    static let height: CGFloat = 90

    static var previews: some View {
        Group {
            DiceDisplay(face: Binding.constant(DieType.basic1.getRandomFace()))
                .previewLayout(.fixed(width: width, height: height))
            DiceDisplay(face: Binding.constant(DieType.basic3.getRandomFace()))
                .previewLayout(.fixed(width: width, height: height))
            DiceDisplay(face: Binding.constant(DieType.lake.getRandomFace()))
                .previewLayout(.fixed(width: width, height: height))
            DiceDisplay(face: Binding.constant(DieType.river.getRandomFace()))
                .previewLayout(.fixed(width: width, height: height))
            DiceDisplay(face: Binding.constant(DieType.lava.getRandomFace()))
                .previewLayout(.fixed(width: width, height: height))
            DiceDisplay(face: Binding.constant(DieType.meteorDirection.getRandomFace()))
                .previewLayout(.fixed(width: width, height: height))
            DiceDisplay(face: Binding.constant(DieType.meteorDistance.getRandomFace()))
                .previewLayout(.fixed(width: width, height: height))
        }
    }
}
