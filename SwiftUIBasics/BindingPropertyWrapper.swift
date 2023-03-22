//
//  BindingPropertyWrapper.swift
//  SwiftUIPractice
//
//  Created by m-arpan-b on 22/3/23.
//

import SwiftUI

struct BindingPropertyWrapper: View {
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.blue
    @Binding var title: String
    
    var body: some View {
        Button {
            backgroundColor = Color.orange
            buttonColor = Color.red
            title = "New title"
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}

struct BindingPropertyWrapper_Previews: PreviewProvider {
    static var previews: some View {
        BindingPropertyWrapper()
    }
}
