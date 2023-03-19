//
//  PaddingAndSpacer.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 19/3/23.
//

import SwiftUI

struct PaddingAndSpacer: View {
    var body: some View {
        //        Text("Hello world!")
        //            .background(.yellow)
        //            .padding(.all, 10)
        //            .padding(.leading, 20)
        //            .background(.blue)
        
        VStack(alignment: .leading) {
            Text("Arpan Bhowmik")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description of what we will do int the screen. It is multiple lines and we will align the text to the leading edge.")
        }
        .padding()
        .background(
            //.red
            Color.white
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 15)
        )
        .padding(.horizontal, 10)
    }
}

struct PaddingAndSpacer_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacer()
    }
}
