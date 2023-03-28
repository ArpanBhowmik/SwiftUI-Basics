//
//  TabViewBasics.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 27/3/23.
//

import SwiftUI

struct TabViewBasics: View {
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            Text("Browse Tab")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            
            Text("Profile Tab")
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag(2)
        }
    }
}

struct HomeView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.red
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go To Profile")
                        .font(.headline)
                        .padding()
                        .background(.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct TabViewBasics_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBasics()
    }
}
