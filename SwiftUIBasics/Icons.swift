//
//  Icons.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 18/3/23.
//

import SwiftUI

struct Icons: View {
    var body: some View {
        Image(systemName: "heart.fill")
           // .renderingMode(.original)
            .resizable()
            //.aspectRatio(contentMode: .fit)
            .scaledToFill()
            //.font(.largeTitle)
            //font(.system(size: 200))
            .foregroundColor(.green)
            .frame(width: 200, height: 200)
            .clipped()
    }
}

struct Icons_Previews: PreviewProvider {
    static var previews: some View {
        Icons()
    }
}
