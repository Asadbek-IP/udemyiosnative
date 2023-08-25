//
//  MyTabView.swift
//  udemyiosnative
//
//  Created by Mac Mini 1 on 25/08/23.
//

import SwiftUI

struct MyTabView: View {
    @EnvironmentObject var bookData: BookAppData
   // @State var selectedItem: Int = 0
    var body: some View {
//        TabView(selection: $selectedItem){
//            BooksView()
//                .tabItem { Label("Book", systemImage: "book.circle") }
//                .tag(0)
//            BookSettingsView()
//                .tabItem { Label("Settings",systemImage: "gear") }
//                .badge(12)
//                .tag(1)
//        }
        
        TabView{
            ForEach(bookData.bookData){ book in
                
                Image(book.cover)
                    .resizable()
                    .scaledToFit()
                
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview {
    MyTabView().environmentObject(BookAppData())
}
