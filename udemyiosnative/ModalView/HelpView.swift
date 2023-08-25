//
//  HelpView.swift
//  udemyiosnative
//
//  Created by Mac Mini 1 on 25/08/23.
//

import SwiftUI

struct HelpView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            HStack {
                Spacer()
                Button("X"){
                    dismiss()
                }.padding()
            }
            Text("Press this button when you need help")
            
            
        }
        .frame(width: 250,height: 250)
    }
}

#Preview {
    HelpView()
}
