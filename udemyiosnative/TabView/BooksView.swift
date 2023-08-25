//
//  BooksView.swift
//  udemyiosnative
//
//  Created by Mac Mini 1 on 25/08/23.
//

import SwiftUI

struct BooksView: View {
    @EnvironmentObject var bookData: BookAppData
    var body: some View {
        List(bookData.bookData){ book in
            
            CellBook(book: book)
            
        }
            }
}

#Preview {
    BooksView().environmentObject(BookAppData())
}
