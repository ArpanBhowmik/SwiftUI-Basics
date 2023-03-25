//
//  Alerts.swift
//  SwiftUIPractice
//
//  Created by m-arpan-b on 24/3/23.
//

import SwiftUI

struct Alerts: View {
    @State var shouldShow: Bool = false
    @State var title: String = ""
    @State var message: String = ""
    @State var backgroundColor: Color = .yellow
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Button("Button 1") {
                    shouldShow.toggle()
                    title = "Error Uploading video"
                    message = "Couldn't upload video for some reasons"
                }
                
                Button("Button 2") {
                    shouldShow.toggle()
                    title = "Successfully Uploading video"
                    message = "Success in uploading video. Great"
                }
            }
            .alert(isPresented: $shouldShow) {
                //Alert(title: Text("Something went wrong"))
                alert
            }
        }
    }
    
    var alert: Alert {
        Alert(
            title: Text(title),
            message: Text(message),
            primaryButton: .cancel(),
            secondaryButton: .destructive(Text("Delete"), action: {
                backgroundColor = .red
            })
        )
    }
}

struct Alerts_Previews: PreviewProvider {
    static var previews: some View {
        Alerts()
    }
}
