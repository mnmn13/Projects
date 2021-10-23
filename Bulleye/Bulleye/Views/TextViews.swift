//
//  TextViews.swift
//  Bulleye
//
//  Created by MN on 05.10.2021.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
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
            .kerning(1.5)
            .font(.caption2)
            .bold()
            .foregroundColor(Color("TextColor"))
    }
}
    struct BodyText: View {
        var text: String
        
        var body: some View {
            Text(text)
                .font(.subheadline)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .lineSpacing(12)
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
                .cornerRadius(12.0)
        }
    }
    struct TextViews_Previews: PreviewProvider {
        static var previews: some View {
            VStack {
                InstructionText(text: "Instructions")
                BigNumberText(text: "Number")
                SliderLabelText(text: "Slider")
                LabelText(text: "Label")
                BodyText(text: "You scored 200 Points\n🎉🎉🎉")
                ButtonText(text: "Start New Round")
                
            }
            .padding()
        }
    }
