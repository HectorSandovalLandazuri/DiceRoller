//
//  ContentView.swift
//  DiceRoller
//
//  Created by Héctor Manuel Sandoval Landázuri on 25/05/24.
//

import SwiftUI

struct ContentView: View {
    var game = Game()
    var body: some View {
        TabView {
            GameView()
                .tabItem {
                    Image(systemName: "gamecontroller.fill")
                    Text("Play")
                }
            ResultsView()
                .tabItem {
                    Image(systemName: "chart.bar.fill")
                    Text("Results")
                }
        }.environmentObject(game)
    }


   
}

#Preview {
    ContentView()
}
