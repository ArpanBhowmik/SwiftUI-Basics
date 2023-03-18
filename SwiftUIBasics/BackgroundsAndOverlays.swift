//
//  BackgroundsAndOverlays.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 18/3/23.
//

import SwiftUI

struct BackgroundsAndOverlays: View {
    var body: some View {
        //        Text("Hello world")
        //            .background(
        //                .red
        //                LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing)
        //                Circle()
        //                    .fill(LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing))
        //                    .frame(width: 100, height: 100, alignment: .center)
        //            )
        //            .background(
        //                Circle()
        //                    .fill(LinearGradient(colors: [.blue, .red], startPoint: .leading, endPoint: .trailing))
        //                    .frame(width: 120, height: 120, alignment: .center)
        //            )
        
        //        Circle()
        //            .fill(.red)
        //            .frame(width: 100, height: 100, alignment: .center)
        //            .overlay(
        //                Text("1")
        //                    .font(.largeTitle)
        //                    .foregroundColor(.white)
        //            )
        //            .background(
        //                Circle()
        //                    .fill(.blue)
        //                    .frame(width: 120, height: 120, alignment: .center)
        //            )
        
        Rectangle()
            .frame(width: 100, height: 100)
            .overlay(
                Rectangle()
                    .fill(.blue)
                    .frame(width: 50, height: 50)
                , alignment: .center
            )
            .background(
                Rectangle()
                    .fill(.red)
                    .frame(width: 150, height: 150)
                , alignment: .center
            )
    }
}

struct BackgroundsAndOverlays_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundsAndOverlays()
    }
}
