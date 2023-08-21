//
//  BookDetailsScreen.swift
//  udemyiosnative
//
//  Created by Mac Mini 1 on 21/08/23.
//

import SwiftUI

struct BookDetailsScreen: View {
    var book: BookViewModel
    var body: some View {
        VStack{
            Text(book.title).font(.system(size: 20)).bold()
            Text(book.auther)
            Image(book.cover)
                .resizable()
                .padding()
        }
        .navigationTitle("Book")
    }
}

#Preview {
    BookDetailsScreen(book:BookViewModel(book: Book(title: "Steve Jobs", auther: "Walter Isaacson", cover: "book1", year: 2011, selected: false)))
 
}
