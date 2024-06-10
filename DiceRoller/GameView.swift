//
//  GameView.swift
//  DiceRoller
//
//  Created by Héctor Manuel Sandoval Landázuri on 10/06/24.
//

import SwiftUI

struct GameView: View {
    @EnvironmentObject var game: Game
    @State private var showFeedback = false
     var body: some View {
        VStack(spacing: 50) {
            if showFeedback {
                Text("You rolled a \(game.total)")
            }
            HStack(spacing: 20) {
                Text("\(game.firstDice)")
                    .frame(width: 50, height: 50)
                    .border(Color.black, width: 2)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                Text("\(game.secondDice)")
                    .frame(width: 50, height: 50)
                    .border(Color.black, width: 2)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
            }.font(.largeTitle)
            Button("Roll") {
                game.rollDice()
                showFeedback = true
            }
        }
     }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
            .environmentObject(Game())
    }
}
