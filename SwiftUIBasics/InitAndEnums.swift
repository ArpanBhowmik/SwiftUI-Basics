//
//  InitAndEnums.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 19/3/23.
//

import SwiftUI

struct InitAndEnums: View {
    let backgroundColor: Color
    let count: Int
    let title: String
        
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150,height: 150)
        .cornerRadius(10)
        .background(backgroundColor)
    }
}

struct InitAndEnums_Previews: PreviewProvider {
    static var previews: some View {
        InitAndEnums(backgroundColor: .purple, count: 55, title: "oranges")
    }
}
