//
//  DiceSelectionView.swift
//  Railroad Ink Dice Roller
//
//  Created by Aaron on 5/23/20.
//  Copyright © 2020 Rhindon Computing. All rights reserved.
//

import SwiftUI

struct DiceSelectionView: View {
    
    @State var selectedGameType: GameType = .basic
    @State var diceViewVisible: Bool = false
    
    var body: some View {
        
        VStack {
            
            Spacer()

            Text("Railroad Ink Dice Roller")
                .font(.largeTitle)
            
            HStack {
                Button("Basic Dice Only") {
                    selectedGameType = .basic
                    diceViewVisible.toggle()
                }
                .font(.title3)
                .buttonStyle(.borderedProminent)
                .padding(.all)

                Button("All Dice") {
                    selectedGameType = .all
                    diceViewVisible.toggle()
                }
                .font(.title3)
                .buttonStyle(.borderedProminent)
                .padding(.all)
            }
            
            HStack {
                Button("Lava Dice") {
                    selectedGameType = .lava
                    diceViewVisible.toggle()
                }
                .font(.title3)
                .buttonStyle(.borderedProminent)
                .padding(.all)
                Button("Meteor Dice") {
                    selectedGameType = .meteor
                    diceViewVisible.toggle()
                }
                .font(.title3)
                .buttonStyle(.borderedProminent)
                .padding(.all)
            }
            HStack {
                Button("Lake Dice") {
                    selectedGameType = .lake
                    diceViewVisible.toggle()
                }
                .font(.title3)
                .buttonStyle(.borderedProminent)
                .padding(.all)
                Button("River Dice") {
                    selectedGameType = .river
                    diceViewVisible.toggle()
                }
                .buttonStyle(.borderedProminent)
                .padding(.all)
            }
            
            Spacer()
        }
        .fullScreenCover(isPresented: $diceViewVisible) {
            DiceView(gameType: $selectedGameType)
        }
        
    }
}

struct DiceSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        DiceSelectionView()
    }
}
