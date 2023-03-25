//
//  TextFieldBasics.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 25/3/23.
//

import SwiftUI

struct TextFieldBasics: View {
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type Something here...", text: $textFieldText)
                //.textFieldStyle(.roundedBorder)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
                
                TextField("something", text: $textFieldText)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
                
                Button {
                    if isTextValid() {
                        saveData()
                    }
                } label: {
                    Text("SAVE")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(isTextValid() ?  Color.blue.cornerRadius(10) : Color.gray.cornerRadius(10))
                        .foregroundColor(.white)
                }
                .disabled(!isTextValid())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Practice")
        }
    }
    
    func saveData() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
    
    func isTextValid() -> Bool {
        return textFieldText.count >= 3
    }
}

struct TextFieldBasics_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBasics()
    }
}
