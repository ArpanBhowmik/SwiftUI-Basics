//
//  ContextMenu.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 25/3/23.
//

import SwiftUI

struct ContextMenu: View {
    @State var backgroundColor = Color.red
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Learning swift UI")
                .font(.headline)
            Text("How to use context menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding()
        .background(backgroundColor.cornerRadius(30))
        .contextMenu {
            Button {
                backgroundColor = .yellow
            } label: {
                Label("Button 1", systemImage: "flame.fill")
            }
            
            Button {
                backgroundColor = .orange
            } label: {
                Text("Button 2")
            }
            
            Button {
                backgroundColor = .green
            } label: {
                HStack {
                    Text("Button 3")
                    Image(systemName: "heart.fill")
                }
            }
        }
    }
}

struct ContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenu()
    }
}
