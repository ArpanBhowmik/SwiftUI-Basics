//
//  Spacers.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 19/3/23.
//

import SwiftUI

struct Spacers: View {
    var body: some View {
        //        HStack(spacing: 0) {
        //            Spacer(minLength: nil) // we can set minimum length on spacer
        //                .frame(height: 10)
        //                .background(.orange)
        //
        //            Rectangle()
        //                .frame(width: 50, height: 50)
        //
        //            Spacer()
        //                .frame(height: 10)
        //                .background(.orange)
        //
        //            Rectangle()
        //                .fill(.red)
        //                .frame(width: 50, height: 50)
        //
        //            Spacer()
        //                .frame(height: 10)
        //                .background(.orange)
        //
        //            Rectangle()
        //                .fill(.green)
        //                .frame(width: 50, height: 50)
        //
        //            Spacer()
        //                .frame(height: 10)
        //                .background(.orange)
        //        }
        
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                
                Spacer()
                    .frame(height: 10)
                //.background(.orange)
                
                Image(systemName: "gear")
            }
            //.background(.yellow)
            .padding(.horizontal)
            .font(.title)
            //.background(.blue)
            
            Spacer()
                .frame(width: 10)
            //.background(.orange)
            
            Rectangle()
                .fill(.green)
                .frame(height: 60)
        }
    }
}

struct Spacers_Previews: PreviewProvider {
    static var previews: some View {
        Spacers()
    }
}
