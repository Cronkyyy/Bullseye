//
//  PointsView.swift
//  Bullseye
//
//  Created by Dylan Cronk on 1/21/21.
//

import SwiftUI

struct PointsView: View {
  @Binding var alertIsVisible: Bool
  @Binding var sliderValue: Double
  @Binding var game: Game
  var body: some View {
    let roundedValue = Int(sliderValue.rounded())
    let points = game.calcPointsAwarded(sliderValue: roundedValue)
    VStack(spacing: 10) {
      InstructionText(text: "The slider's value is".uppercased())
      BigNumberText(text: String(roundedValue))
      BodyText(text: "You scored \(points) points!")
      Button(action: {
        withAnimation {
          alertIsVisible = false
        }
        game.startNewRound(points: points)
      }) {
        ButtonText(text: "Start New Round")
      }
    }
    .padding()
    .frame(maxWidth: 300)
    .background(Color("BackgroundColor"))
    .cornerRadius(Constants.General.roundRectCornerRadius)
    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 5, y: 5)
    .transition(.scale)
  }
}
