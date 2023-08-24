//
//  udemyiosnativeApp.swift
//  udemyiosnative
//
//  Created by Dark Laki on 27/07/23.
//

import SwiftUI

@main
struct udemyiosnativeApp: App {
    //@StateObject private var appData = AplicationData()
    @StateObject private var bookData = BookAppData()
    var body: some Scene {
        WindowGroup {
            ModalView().environmentObject(bookData)
                
        }
    }
}
