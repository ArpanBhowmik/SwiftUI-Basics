//
//  Popover.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 23/3/23.
//

import SwiftUI

struct Popover: View {
    @State var shouldShow = false
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            VStack {
                Button("Button") {
                    shouldShow.toggle()
                    
                }
                .font(.largeTitle)
                
                Spacer()
            }
            
            //Method 1 - Sheet
            .sheet(isPresented: $shouldShow) {
                //NewScreen()
            }
            
            //            //Method 2 - Transition
            if shouldShow {
                NewScreen(shouldShowScreen: $shouldShow)
                    .transition(.move(edge: .bottom))
                    .padding(.top, 20)
                    .animation(.spring())
            }
            
            //Method 3 - Offset
            NewScreen(shouldShowScreen: $shouldShow)
                .offset(y: shouldShow ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}

struct NewScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var shouldShowScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple.ignoresSafeArea()
            
            Button {
                // presentationMode.wrappedValue.dismiss()
                shouldShowScreen.toggle()
            } label: {
                Image(systemName: "xmark")
            }
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            Spacer()
        }
    }
}

struct Popover_Previews: PreviewProvider {
    static var previews: some View {
        Popover()
    }
}
