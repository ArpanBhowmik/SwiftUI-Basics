//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 17/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing: 0) {
            Circle()
                .fill(.blue)
                .frame(width: 40, height: 40)
            
            Rectangle()
                .fill(.blue)
                .frame(width: 50, height: 2)
            
            Circle()
                .fill(.blue)
                .frame(width: 40, height: 40)
            
            Rectangle()
                .fill(.blue)
                .frame(width: 50, height: 2)
            
            Circle()
                .fill(.blue)
                .frame(width: 40, height: 40)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
