//
//  GradientBasics.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 18/3/23.
//

import SwiftUI

struct GradientBasics: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                LinearGradient(
//                    colors: [.red, .blue],
//                    startPoint: .leading,
//                    endPoint: .trailing
//                )
                
                RadialGradient(colors: [.red, .blue], center: .center, startRadius: 0, endRadius: 200)
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientBasics_Previews: PreviewProvider {
    static var previews: some View {
        GradientBasics()
    }
}
