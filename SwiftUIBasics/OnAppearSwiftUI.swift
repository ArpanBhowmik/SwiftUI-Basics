//
//  OnAppearSwiftUI.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 27/3/23.
//

import SwiftUI

struct OnAppearSwiftUI: View {
    @State var myText: String = "Starting Text"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 300)
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                myText = "The Screen has Appeared"
            })
            .navigationTitle(Text("On Appear: \(count)"))
        }
    }
}

struct OnAppearSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearSwiftUI()
    }
}
