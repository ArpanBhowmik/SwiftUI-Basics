//
//  ToogleButtons.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 25/3/23.
//

import SwiftUI

struct ToogleButtons: View {
    @State var isOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status: ")
                Text(isOn ? "online" : "offline")
            }
            Toggle(isOn: $isOn) {
                Text("Label")
            }
            .toggleStyle(SwitchToggleStyle(tint: Color.blue))
            
            Spacer()
        }
    }
}

struct ToogleButtons_Previews: PreviewProvider {
    static var previews: some View {
        ToogleButtons()
    }
}
