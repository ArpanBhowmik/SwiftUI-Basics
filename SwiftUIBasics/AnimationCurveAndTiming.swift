//
//  AnimationCurveAndTiming.swift
//  SwiftUIPractice
//
//  Created by m-arpan-b on 22/3/23.
//

import SwiftUI

struct AnimationCurveAndTiming: View {
    @State var isAnimating: Bool = false
    let timing: Double = 10
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
            // .animation(Animation.linear(duration: timing))
                .animation(.spring(
                    response: 1.0,
                    dampingFraction: 0.2,
                    blendDuration: 1.0)
                )
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeIn(duration: timing))
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeInOut(duration: timing))
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeOut(duration: timing))
        }
    }
}

struct AnimationCurveAndTiming_Previews: PreviewProvider {
    static var previews: some View {
        AnimationCurveAndTiming()
    }
}
