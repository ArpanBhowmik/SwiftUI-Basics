//
//  Steppers.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 27/3/23.
//

import SwiftUI

struct Steppers: View {
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Stepper 2") {
                incrementWidth(amount: 10)
            } onDecrement: {
                incrementWidth(amount: -10)
            }
        }
        .padding(50)
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

struct Steppers_Previews: PreviewProvider {
    static var previews: some View {
        Steppers()
    }
}
