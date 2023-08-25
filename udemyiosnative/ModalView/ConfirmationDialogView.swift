//
//  ConfirmationDialogView.swift
//  udemyiosnative
//
//  Created by Mac Mini 1 on 25/08/23.
//

import SwiftUI

struct ConfirmationDialogView: View {
    @State private var openDialog: Bool = false
    var body: some View {
        VStack {
            Button("Open Confirmation Dialog"){
                openDialog = true
            }
            Spacer()
        }
        .confirmationDialog("Email", isPresented: $openDialog, actions: {
            Button("Move to inbox",role: .none,action: {})
            Button("Delete",role: .destructive,action: {})
            Button("Cancel",role: .cancel,action: {})
        }, message: {
            Text("What do you want to do with the message?")
        })
    }
}

#Preview {
    ConfirmationDialogView()
}
