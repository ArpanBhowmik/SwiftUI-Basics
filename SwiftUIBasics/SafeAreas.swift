//
//  SafeAreas.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 20/3/23.
//

import SwiftUI

struct SafeAreas: View {
    var body: some View {
//        ZStack {
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//
//            VStack {
//                Text("Hello, World!")
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(.red)
//        }
        
        ScrollView {
            VStack {
                Text("This is a test")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { _ in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                    
                }
            }
        }
        .background(
            Color.red
                .edgesIgnoringSafeArea(.all)
        )
    }
}

struct SafeAreas_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreas()
    }
}
