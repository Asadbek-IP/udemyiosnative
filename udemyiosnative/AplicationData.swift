//
//  AplicationData.swift
//  udemyiosnative
//
//  Created by Dark Laki on 31/07/23.
//

import Foundation

struct Book{
    var title: String
    var auther: String
   
}

struct BookViewModel{
    var book: Book
    var header: String {
        return book.title + " " + book.auther
    }
    
}

class AplicationData: ObservableObject{
    @Published var userData: BookViewModel
    
    init() {
        userData = BookViewModel(book: Book(title: "Default title", auther: "Unknown"))
    }
}
