//
//  StateObserver.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 21/3/23.
//

import SwiftUI

struct StateObserver: View {
    @State var backgroundColor: Color = .green
    @State var title: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text(title)
                    .font(.title)
                Text("Count \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .red
                        title = "Button 1 was pressed"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .blue
                        title = "Button 2 was pressed"
                        count -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateObserver_Previews: PreviewProvider {
    static var previews: some View {
        StateObserver()
    }
}
