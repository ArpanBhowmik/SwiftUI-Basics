//
//  ColorBasics.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 18/3/23.
//

import SwiftUI

struct ColorBasics: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //Color.primary
                //Color(uiColor: .secondarySystemBackground)
                Color("CustomColor")
                
            )
            .frame(width: 300, height: 200)
            .shadow(color: Color("CustomColor").opacity(0.9), radius: 20, x: 0, y: 0)
    }
}

struct ColorBasics_Previews: PreviewProvider {
    static var previews: some View {
        ColorBasics()
    }
}
