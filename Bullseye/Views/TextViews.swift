//
//  TextViews.swift
//  Bullseye
//
//  Created by Dylan Cronk on 1/20/21.
//

import SwiftUI

struct InstructionText: View {
  var text: String
  var body: some View {
    Text(text.uppercased())
      .kerning(2.0)
      .bold()
      .multilineTextAlignment(.center)
      .lineSpacing(4)
      .font(.footnote)
      .foregroundColor(Color("TextColor"))
  }
}

struct SliderLabelText: View {
  var text: String
  var body: some View {
    Text(text)
      .bold()
      .foregroundColor(Color("TextColor"))
      .frame(width: 35.0)
  }
}

struct LabelText: View {
  var text: String
  var body: some View {
    Text(text)
      .bold()
      .foregroundColor(Color("TextColor"))
      .kerning(1.5)
      .font(.caption)
  }
}

struct BodyText: View {
  var text: String
  var body: some View {
    Text(text)
      .font(.subheadline)
      .fontWeight(.semibold)
      .multilineTextAlignment(.center)
      .lineSpacing(12.0)
  }
}

struct ButtonText: View {
  var text: String
  var body: some View {
    Text(text)
      .bold()
      .padding()
      .frame(maxWidth: .infinity)
      .background(
        Color.accentColor
      )
      .foregroundColor(.white)
      .cornerRadius(12)
  }
}

struct ScoreText: View {
  let score: Int
  var body: some View {
    Text(String(score))
      .bold()
      .kerning(-0.2)
      .foregroundColor(Color("TextColor"))
      .font(.title3)
  }
}

struct DateText: View {
  let date: Date
  var body: some View {
    Text(date, style: .time)
      .bold()
      .kerning(-0.2)
      .foregroundColor(Color("TextColor"))
      .font(.title3)
  }
}

struct BigNumberText: View {
  var text: String
  var body: some View {
    Text(text)
      .kerning(-1)
      .font(.largeTitle)
      .fontWeight(.black)
      .foregroundColor(Color("TextColor"))
  }
}

struct BigBoldText : View {
  let text: String
  var body: some View {
    Text(text.uppercased())
      .kerning(2.0)
      .foregroundColor(Color("TextColor"))
      .font(.title3)
      .fontWeight(.black)
  }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
      VStack() {
        InstructionText(text: "InstructionText")
        BigNumberText(text: "BigNumberText")
        BodyText(text: "Body")
        ButtonText(text: "ButtonText")
      }
    }
}


