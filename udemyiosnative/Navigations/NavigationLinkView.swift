//
//  NavigationLinkView.swift
//  udemyiosnative
//
//  Created by Mac Mini 1 on 21/08/23.
//

import SwiftUI

struct NavigationLinkView: View {
    @EnvironmentObject var bookData: BookAppData
    @State private var path = NavigationPath()
    var body: some View {
        NavigationStack(path: $path){
            List(bookData.bookData){ book in
                
//                NavigationLink(destination: BookDetailsScreen(book: book), label: {
//                    CellBook(book: book)
//                })
                
                NavigationLink(value: book, label: {
                    CellBook(book: book)
                      
                })
                
                
            }
            .navigationDestination(for: BookViewModel.self, destination: { book in
                BookDetailsScreen(path: $path, book: book)
            })
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    NavigationLink(destination: SettingsView(), label: {
                        Image(systemName: "gearshape")
                    })
                }
            }
        }
        .navigationTitle("Book")
    }
}

#Preview {
    NavigationLinkView()
        .environmentObject(BookAppData())
}
