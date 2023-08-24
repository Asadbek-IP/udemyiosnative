//
//  ModalView.swift
//  udemyiosnative
//
//  Created by Mac Mini 1 on 24/08/23.
//

import SwiftUI

struct ModalView: View {
    @EnvironmentObject var bookAppData: BookAppData
    @State var showSheet: Bool = false
    @State var editItem: BookViewModel?
    var body: some View {
        NavigationStack{
            List(bookAppData.bookData){ book in
                CellBook(book: book)
                    .onTapGesture {
                        editItem = book
                    }
            }.navigationTitle("Book")
                .listStyle(.plain)
                .toolbar{
                    ToolbarItem(placement: .topBarTrailing){
                        Button(action: {
                            showSheet = true
                        }, label: {
                            Image(systemName: "plus")
                        })
                    }
                }
                .sheet(isPresented: $showSheet){
                    AddBookView()
                        //.interactiveDismissDisabled(true)
//                        .presentationDetents([.medium])
                        .presentationDetents([.height(250)])
                }
                .sheet(item: $editItem){ item in
                    
                    AddBookView(book: editItem)
                    
                }
                
        }
    }
}

#Preview {
    ModalView().environmentObject(BookAppData())
}
