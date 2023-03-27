//
//  SliderSwiftUI.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 27/3/23.
//

import SwiftUI

struct SliderSwiftUI: View {
    @State var sliderValue: Double = 3
    @State var color: Color = .green
    
    var body: some View {
        VStack {
            Text("Rating: ")
            Text(
                String(format: "%.1f", sliderValue)
            )
            .foregroundColor(color)
           // Slider(value: $sliderValue)
           // Slider(value: $sliderValue, in: 0...100)
           // Slider(value: $sliderValue, in: 1...5, step: 1.0)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                label: {
                    Text("Title")
                },
                minimumValueLabel: {
                    Text("1")
                },
                maximumValueLabel: {
                    Text("5")
                },
                onEditingChanged: { _ in
                    color = .red
                })
                .padding()
        }
    }
}

struct SliderSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        SliderSwiftUI()
    }
}
