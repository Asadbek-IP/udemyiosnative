//
//  ListView.swift
//  udemyiosnative
//
//  Created by Dark Laki on 02/08/23.
//

import SwiftUI


struct CellBook: View {
    let book: BookViewModel
    var body: some View {
        HStack{
            Image(book.cover)
                .resizable()
                .scaledToFit()
                .frame(width: 80,height: 100)
            VStack(alignment: .leading){
                Text(book.title)
                    .bold()
                Text(book.auther)
                Text(book.year)
                    .font(.caption)
            }
        }
    }
}
struct ListView: View {
    @EnvironmentObject var bookAppData: BookAppData
    
    let colors = [ .white, Color(white: 0.9)]
    var body: some View {
        List(bookAppData.bookData){ book in
            let index = bookAppData.bookData.firstIndex(where: {
                $0.id == book.id
            }) ?? 0
            CellBook(book: book)
                .listRowInsets(EdgeInsets(top: 0, leading:0, bottom: 10, trailing: 0))
                .listRowBackground(index % 2 == 0 ? colors[0] : colors[1])
                .listRowSeparator(.hidden)
                
        }.listStyle(.plain)
            
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(BookAppData())
    }
}


