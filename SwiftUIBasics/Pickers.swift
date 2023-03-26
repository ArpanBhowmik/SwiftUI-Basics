//
//  Pickers.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 26/3/23.
//

import SwiftUI

struct Pickers: View {
    @State var selection: String = "1"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    var body: some View {
        Picker(selection: $selection) {
            ForEach(filterOptions.indices) { index in
                Text(filterOptions[index])
                    .tag(filterOptions[index])
            }
            
        } label: {
            Text("Picker")
        }
        .pickerStyle(SegmentedPickerStyle())
        
        VStack {
            HStack {
                Text("Age: ")
                Text(selection)
            }
            
            Picker(selection: $selection, label: Text("Label")) {
                ForEach(0..<10) { age in
                    Text(String(age))
                        .font(.headline)
                        .foregroundColor(.red)
                        .tag(String(age))
                }
            }
            .background(Color.gray.opacity(0.3))
            .pickerStyle(MenuPickerStyle())
            //.pickerStyle(WheelPickerStyle())
        }
    }
}

struct Pickers_Previews: PreviewProvider {
    static var previews: some View {
        Pickers()
    }
}
