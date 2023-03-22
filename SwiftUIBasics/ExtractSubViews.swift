//
//  ExtractSubViews.swift
//  SwiftUIPractice
//
//  Created by m-arpan-b on 22/3/23.
//

import SwiftUI

struct ExtractSubViews: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            
            HStack {
                MyItem(title: "Apples", count: 5, color: .red)
                MyItem(title: "Oranges", count: 50, color: .orange)
                MyItem(title: "Bananas", count: 34, color: .yellow)
            }
        }
    }
}

struct ExtractSubViews_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubViews()
    }
}

struct MyItem: View {
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
