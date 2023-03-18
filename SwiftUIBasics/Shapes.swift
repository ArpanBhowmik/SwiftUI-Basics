//
//  Shapes.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 17/3/23.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        //        Circle()
        //            .stroke(Color.red, lineWidth: 20)
        //            .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [50, 30]))
        //            .trim(from: 0.2, to: 1)
        //            .stroke(Color.purple, lineWidth: 50)
        //            .padding()
        
        // Ellipse()
        // Capsule(style: .continuous)
        // Rectangle()
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(.purple)
            .frame(width: 300, height: 200)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
