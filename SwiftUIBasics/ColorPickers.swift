//
//  ColorPickers.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 26/3/23.
//

import SwiftUI

struct ColorPickers: View {
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            ColorPicker(
                "Select a Color",
                selection: $backgroundColor,
                supportsOpacity: true
            )
            .padding()
            .background(Color.black)
            .foregroundColor(.white)
            .cornerRadius(15)
            .padding(50)
        }
    }
}

struct ColorPickers_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickers()
    }
}
