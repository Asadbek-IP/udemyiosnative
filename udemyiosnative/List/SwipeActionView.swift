//
//  SwipeActionView.swift
//  udemyiosnative
//
//  Created by Dark Laki on 04/08/23.
//

import SwiftUI

struct SwipeActionView: View {
    @EnvironmentObject var bookData: BookAppData
    var body: some View {
        List{
            ForEach(bookData.bookData){ book in
                CellBook2(book: book)
                //                        .swipeActions{
                //                            Button(role: .destructive, action: {
                //                                removeBook(book: book)
                //                            }, label: {
                //                                Image(systemName: "trash")
                //                            })
                //                           
                //                        }
                
                
            }
        }
        .listStyle(.plain)
        .refreshable{
            print("Loaded books")
        }
    }
    
    func removeBook(book: BookViewModel){
        var indexes = IndexSet()
        if let index = bookData.bookData.firstIndex(where: {$0.id == book.id}){
            indexes.insert(index)
        }
        bookData.bookData.remove(atOffsets: indexes)
    }
}

struct SwipeActionView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionView().environmentObject(BookAppData())
    }
}
