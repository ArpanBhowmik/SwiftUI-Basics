//
//  ExtractedFunctions.swift
//  SwiftUIPractice
//
//  Created by m-arpan-b on 22/3/23.
//

import SwiftUI

struct ExtractedFunctions: View {
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            contentLayer
            
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button {
                buttonPressed()
            } label: {
                Text("Press Me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
        }
    }
    
    private func buttonPressed() {
        backgroundColor = .yellow
    }
}

struct ExtractedFunctions_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctions()
    }
}
