//
//  Stacks.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 18/3/23.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
        //        VStack(alignment: .leading, spacing: 0) {
        //            Rectangle()
        //                .fill(.red)
        //                .frame(width: 200, height: 200)
        //
        //            Rectangle()
        //                .fill(.green)
        //                .frame(width: 150, height: 150)
        //
        //            Rectangle()
        //                .fill(.orange)
        //                .frame(width: 100, height: 100)
        //        }
        
        ZStack(alignment: .top) {
            Rectangle()
                .fill(.yellow)
                .frame(width: 350, height: 500)
            
            VStack(alignment: .leading, spacing: 30) {
                Rectangle()
                    .fill(.red)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
                
                HStack(alignment: .bottom) {
                    Rectangle()
                        .fill(.purple)
                        .frame(width: 50, height: 50)
                    
                    Rectangle()
                        .fill(.red)
                        .frame(width: 75, height: 50)
                    
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 35, height: 35)
                }
                .background(.white)
            }
            .background(.black)
        }
    }
}

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}
