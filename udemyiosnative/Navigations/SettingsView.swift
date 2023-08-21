//
//  SettingsView.swift
//  udemyiosnative
//
//  Created by Mac Mini 1 on 21/08/23.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss
    @State private var showPicture: Bool = true
    @State private var showYear: Bool = true
    
    var body: some View {
        Form{
            Toggle(isOn: $showPicture,label: {
                Text("Show Picture")
            })
            Toggle(isOn: $showYear,label: {
                Text("Show year")
            })
        }
        .navigationTitle("Settings")
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .topBarLeading){
                Button("Go Back"){
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}
