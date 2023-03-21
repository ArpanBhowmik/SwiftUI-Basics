//
//  Grids.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 21/3/23.
//

import SwiftUI

struct Grids: View {
    //    let columns: [GridItem] = [
    //        GridItem(.fixed(50), spacing: nil, alignment: nil),
    //        GridItem(.fixed(75), spacing: nil, alignment: nil),
    //        GridItem(.fixed(100), spacing: nil, alignment: nil),
    //        GridItem(.fixed(75), spacing: nil, alignment: nil),
    //        GridItem(.fixed(50), spacing: nil, alignment: nil),
    //    ]
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            //            LazyVGrid(columns: columns) {
            //                ForEach(0..<50) { _ in
            //                    Rectangle()
            //                        .frame(height: 50)
            //                }
            //            }
            
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]) {
                    Section {
                        ForEach(0..<20) { _ in
                            Rectangle()
                                .frame(height: 100)
                        }
                    } header: {
                        Text("Section 1")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(.blue)
                            .padding()
                    }
                    
                    Section {
                        ForEach(0..<20) { _ in
                            Rectangle()
                                .fill(.green)
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 2")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(.red)
                            .padding()
                    }
                }
        }
    }
}

struct Grids_Previews: PreviewProvider {
    static var previews: some View {
        Grids()
    }
}
