//
//  TextEditorBasics.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 25/3/23.
//

import SwiftUI

struct TextEditorBasics: View {
    @State var textEditorText: String = "this is starting"
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .foregroundColor(.red)
                
                Button {
                    savedText = textEditorText
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                }
                Text(savedText)
                Spacer()
            }
            .padding()
            .navigationTitle("Text Editor basics")
        }
    }
}

struct TextEditorBasics_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBasics()
    }
}
