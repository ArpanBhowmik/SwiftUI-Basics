//
//  TransitionsBasics.swift
//  SwiftUIPractice
//
//  Created by m-arpan-b on 22/3/23.
//

import SwiftUI

struct TransitionsBasics: View {
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.move(edge: .bottom))
                    .animation(.spring())
                
            }
        }
    }
}

struct TransitionsBasics_Previews: PreviewProvider {
    static var previews: some View {
        TransitionsBasics()
    }
}
