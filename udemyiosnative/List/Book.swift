//
//  Book.swift
//  udemyiosnative
//
//  Created by Dark Laki on 02/08/23.
//

import Foundation

struct Book: Hashable{
    var title: String
    var auther: String
    var cover: String
    var year: Int
    var selected: Bool
}

struct BookViewModel: Identifiable, Hashable {
    let id = UUID()
    var book: Book
    
    var title: String{
        return book.title
    }
    var auther: String {
        return book.auther
    }
    
    var cover: String {
        return book.cover
    }
    
    var year: String {
        return String(book.year)
    }
    
    var selected: Bool {
        get{
            return book.selected
        }
        set{
            book.selected = newValue
        }
    }
}

class BookAppData: ObservableObject{
    var bookData: [BookViewModel] {
        didSet{
            filterValues(search: "")
        }
    }
    
    @Published var filteredItems: [BookViewModel] = []
    
    func filterValues(search: String,scope: Scopes = .title){
        if search.isEmpty {
            filteredItems = bookData.sorted(by: { $0.title < $1.title })
        } else {
            let list = bookData.filter({ item in
                
                var value = scope == .title ? item.title : item.auther
                return value.localizedCaseInsensitiveContains(search)
            })
            
            filteredItems = list.sorted(by: {$0.title < $1.title})
        }
    }
    
    
    
    init() {
       bookData = [
       BookViewModel(book: Book(title: "Steve Jobs", auther: "Walter Isaacson", cover: "book1", year: 2011, selected: false)),
       BookViewModel(book: Book(title: "HTML5 for Masterminds", auther: "J.D Gauchat", cover: "book2", year: 2017, selected: false)),
       BookViewModel(book: Book(title: "The Road Ahead", auther: "Bill Gates", cover: "book3", year: 1995, selected: false)),
       BookViewModel(book: Book(title: "The C Progaramming Language", auther: "Brain W.Kernighan", cover: "book4", year: 1998, selected: false)),
       BookViewModel(book: Book(title: "Being Digital", auther: "Nicholas Negrophones", cover: "book5", year: 1996, selected: false)),
       BookViewModel(book: Book(title: "Only the Paranoid Survive", auther: "Andrew S.Grove", cover: "book6", year: 1999, selected: false)),
       BookViewModel(book: Book(title: "Accidental Empires", auther: "Robert X. Cringely ", cover: "book7", year: 1997, selected: false)),
       BookViewModel(book: Book(title: "Bobby Fischer Teacher Chess", auther: "Bobby Fischer", cover: "book8", year: 1982, selected: false)),
       BookViewModel(book: Book(title: "New Guide Science", auther: "Isaac Asimov", cover: "book9", year: 1983, selected: false)),
       BookViewModel(book: Book(title: "Christine", auther: "Stephen King", cover: "book10", year: 1983, selected: false)),
       BookViewModel(book: Book(title: "IT", auther: "Stephen King", cover: "book11", year: 1987, selected: false)),
       BookViewModel(book: Book(title: "Ending Aging", auther: "Aubrey de Grey", cover: "book12", year: 2007, selected: false))


       ]
        
        filterValues(search: "")
    }
}
