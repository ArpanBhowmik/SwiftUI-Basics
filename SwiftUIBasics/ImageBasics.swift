//
//  ImageBasics.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 18/3/23.
//

import SwiftUI

struct ImageBasics: View {
    var body: some View {
        Image("sample")
           // .renderingMode(.template) // can change color tint color
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            //.clipped()
            //.cornerRadius(150)
//            .clipShape(
//               //Circle()
//                RoundedRectangle(cornerRadius: 25)
//            )
    }
}

struct ImageBasics_Previews: PreviewProvider {
    static var previews: some View {
        ImageBasics()
    }
}
