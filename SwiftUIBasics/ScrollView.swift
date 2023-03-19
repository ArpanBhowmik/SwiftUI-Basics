//
//  ScrollView.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 19/3/23.
//

import SwiftUI

struct ScrollViewTest: View {
    var body: some View {
        //        ScrollView(.horizontal, showsIndicators: true) {
        //            HStack {
        //                ForEach(0..<10) { _ in
        //                    Rectangle()
        //                        .fill(.blue)
        //                        .frame(width: 300, height: 500)
        //                }
        //            }
        //        }
        
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { _ in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<10) { _ in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                                
                            }
                        }
                    }
                }
                
            }
        }
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewTest()
    }
}
