//
//  SettingsView.swift
//  udemyiosnative
//
//  Created by Mac Mini 1 on 25/08/23.
//

import SwiftUI

struct BookSettingsView: View {
    @EnvironmentObject var bookData: BookAppData
    var body: some View {
        Form{
            Section(header: Text("Settings")){
                Toggle("Show Picture", isOn: $bookData.showPicture)
                Toggle("Show year", isOn: $bookData.showYear)
            }
        }
    }
}

#Preview {
    SettingsView().environmentObject(BookAppData())
}
