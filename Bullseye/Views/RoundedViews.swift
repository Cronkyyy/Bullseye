//
//  RoundedViews.swift
//  Bullseye
//
//  Created by Dylan Cronk on 1/20/21.
//

import SwiftUI

struct RoundedImageViewStroked: View {
  var systemName: String
  var body: some View {
    Image(systemName: systemName)
      .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
      .foregroundColor(Color("TextColor"))
      .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
      .overlay(
        Circle().strokeBorder(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeWidth)
      )
  }
}

struct RoundedImageViewFilled: View {
  var systemName: String
  var body: some View {
    Image(systemName: systemName)
      .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
      .foregroundColor(Color("ButtonFilledTextColor"))
      .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
      .background(
        Circle().fill(Color("ButtonFilledBackgroundColor"))
      )
  }
}

struct RoundRectTextView: View {
  var text: String
  var body: some View {
    Text(text)
      .kerning(-0.2)
      .font(.title3)
      .bold()
      .foregroundColor(Color("TextColor"))
      .frame(width: Constants.General.roundRectViewWidth, height: Constants.General.roundRectViewHeight)
      .overlay(
        RoundedRectangle(cornerRadius: Constants.General.roundRectCornerRadius)
          .stroke(lineWidth: Constants.General.strokeWidth)
          .foregroundColor(Color("ButtonStrokeColor"))
      )
    
    
  }
}

struct RoundedTextView: View {
  let text: String
  var body: some View {
    Text(text)
      .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
      .foregroundColor(Color("TextColor"))
      .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
      .overlay(
        Circle().strokeBorder(Color("LeaderboardRowColor"), lineWidth: Constants.General.strokeWidth))
  }
}

struct RoundedViews_Previews: PreviewProvider {
  static var previews: some View {
    RoundedImageViewStroked(systemName: "arrow.counterclockwise")
  }
}
