//
//  NavigationBasics.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 23/3/23.
//

import SwiftUI

struct NavigationBasics: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hello") {
                    MyOtherScreen()
                }
                Text("Text 1")
                Text("Text 2")
                Text("Text 3")
                Text("Text 4")
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(
                leading:
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame")
                    },
                trailing: NavigationLink(destination: {
                    MyOtherScreen()
                }, label: {
                    Image(systemName: "gear")
                })
                .accentColor(.red)
            )
        }
    }
}

struct MyOtherScreen: View {
    @Environment (\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
                .navigationTitle("Green screen!")
                .navigationBarBackButtonHidden(true)
            
            VStack {
                Button("Back Button") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click here") {
                    Text("Third Screen")
                }
            }
        }
    }
}

struct NavigationBasics_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBasics()
    }
}
