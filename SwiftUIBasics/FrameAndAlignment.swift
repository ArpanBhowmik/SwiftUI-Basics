//
//  FrameAndAlignment.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 18/3/23.
//

import SwiftUI

struct FrameAndAlignment: View {
    var body: some View {
        Text("Hello there!")
            .background(.green)
        //.frame(width: 300, height: 300, alignment: .center)
        //.background(.red)
            .frame(maxWidth: .infinity, alignment: .center)
            .background(.red)
        
    }
}

struct FrameAndAlignment_Previews: PreviewProvider {
    static var previews: some View {
        FrameAndAlignment()
    }
}
