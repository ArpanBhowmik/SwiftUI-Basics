//
//  ReusableActionSheet.swift
//  SwiftUIBasics
//
//  Created by Arpan Bhowmik on 25/3/23.
//

import SwiftUI

struct ReusableActionSheet: View {
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOthersPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOthersPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@userName")
                
                Spacer()
                
                Button {
                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        let shareButton = ActionSheet.Button.default(Text("Share")) {
            
        }
        
        let reportButton = ActionSheet.Button.destructive(Text("Report")) {
            
        }
        
        let deleteButton = ActionSheet.Button.destructive(Text("Delete")) {
            
        }
        
        let cancelButton = ActionSheet.Button.cancel()
        let title = Text("What would you like to do?")
        
        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, deleteButton, cancelButton]
            )
        case .isOthersPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, cancelButton]
            )
        }
    }
}

struct ReusableActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        ReusableActionSheet()
    }
}
