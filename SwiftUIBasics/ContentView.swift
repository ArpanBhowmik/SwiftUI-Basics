//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 17/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("ASDFGHJH!")
            .padding()
            .background(.red)
            .padding()
            .background(.blue)
            .padding()
            .background(.green)
            .padding()
            .background(.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
