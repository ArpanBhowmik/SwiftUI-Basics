//
//  Pageview.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 27/3/23.
//

import SwiftUI

struct Pageview: View {
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    var body: some View {
        TabView {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(Color.green)
            RoundedRectangle(cornerRadius: 20)
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(Color.red)
        }
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
    }
}

struct Pageview_Previews: PreviewProvider {
    static var previews: some View {
        Pageview()
    }
}
