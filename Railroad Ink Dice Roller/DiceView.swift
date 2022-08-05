//
//  ContentView.swift
//  Railroad Ink Dice Roller
//
//  Created by Aaron on 5/20/20.
//  Copyright © 2020 Rhindon Computing. All rights reserved.
//

import SwiftUI

enum GameType {
    case all
    case basic
    case lava
    case meteor
    case river
    case lake
}

struct DiceView: View {

    @Environment(\.dismiss) var dismiss
    
    @Binding var gameType: GameType
    
    @State var basic1 = DieType.basic1.getRandomFace()
    @State var basic2 = DieType.basic3.getRandomFace()
    @State var basic3 = DieType.basic3.getRandomFace()
    @State var basic4 = DieType.basic3.getRandomFace()
    @State var river1 = DieType.river.getRandomFace()
    @State var river2 = DieType.river.getRandomFace()
    @State var lake1 = DieType.lake.getRandomFace()
    @State var lake2 = DieType.lake.getRandomFace()
    @State var lava1 = DieType.lava.getRandomFace()
    @State var lava2 = DieType.lava.getRandomFace()
    @State var meteor1 = DieType.meteorDirection.getRandomFace()
    @State var meteor2 = DieType.meteorDistance.getRandomFace()

    var body: some View {
        VStack {
            Text("Railroad Ink Dice").bold().font(.largeTitle)
            HStack {
                Spacer()
                DiceDisplay(face: $basic1)
                Spacer()
                DiceDisplay(face: $basic2)
                Spacer()
            }
            HStack {
                Spacer()
                DiceDisplay(face: $basic3)
                Spacer()
                DiceDisplay(face: $basic4)
                Spacer()
            }
            
            switch gameType {
            case .basic:
                Spacer()
            case .all:
                HStack {
                    Spacer()
                    DiceDisplay(face: $river1)
                    DiceDisplay(face: $river2)
                    DiceDisplay(face: $lake1)
                    DiceDisplay(face: $lake2)
                    Spacer()
                }
                HStack {
                    Spacer()
                    DiceDisplay(face: $lava1)
                    DiceDisplay(face: $lava2)
                    DiceDisplay(face: $meteor1)
                    DiceDisplay(face: $meteor2)
                    Spacer()
                }
            case .lava:
                HStack {
                    Spacer()
                    DiceDisplay(face: $lava1)
                    Spacer()
                    DiceDisplay(face: $lava2)
                    Spacer()
                }
            case .meteor:
                HStack {
                    Spacer()
                    DiceDisplay(face: $meteor1)
                    Spacer()
                    DiceDisplay(face: $meteor2)
                    Spacer()
                }
            case .lake:
                HStack {
                    Spacer()
                    DiceDisplay(face: $lake1)
                    Spacer()
                    DiceDisplay(face: $lake2)
                    Spacer()
                }
            case .river:
                HStack {
                    Spacer()
                    DiceDisplay(face: $river1)
                    Spacer()
                    DiceDisplay(face: $river2)
                    Spacer()
                }
            }
            Spacer()
            
            Button("Roll Dice") {
                self.basic1 = DieType.basic1.getRandomFace()
                self.basic2 = DieType.basic3.getRandomFace()
                self.basic3 = DieType.basic3.getRandomFace()
                self.basic4 = DieType.basic3.getRandomFace()
                self.river1 = DieType.river.getRandomFace()
                self.river2 = DieType.river.getRandomFace()
                self.lake1 = DieType.lake.getRandomFace()
                self.lake2 = DieType.lake.getRandomFace()
                self.lava1 = DieType.lava.getRandomFace()
                self.lava2 = DieType.lava.getRandomFace()
                self.meteor1 = DieType.meteorDirection.getRandomFace()
                self.meteor2 = DieType.meteorDistance.getRandomFace()
            }
            .padding(.all)
            .buttonStyle(.borderedProminent)
            
            Spacer()
            Button("Back to selection") {
                dismiss()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DiceSelectionView()
    }
}
