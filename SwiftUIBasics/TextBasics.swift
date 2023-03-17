//
//  TextBasics.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 17/3/23.
//

import SwiftUI

struct TextBasics: View {
    var body: some View {
        Text("Hello world! I am enjoying swift UI very much. hopefully in next few days I will learn a lot and it will be a lot of fun.")
            .font(.body)
            .fontWeight(.ultraLight)
            .bold()
            .underline(true, color: Color.red)
            .italic()
            .strikethrough(true, color: Color.green)
            .font(.system(size: 24, weight: .medium, design: .monospaced))
            .baselineOffset(50) // Space between lines
            .kerning(10)
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
            .padding()
    }
}

struct TextBasics_Previews: PreviewProvider {
    static var previews: some View {
        TextBasics()
    }
}
