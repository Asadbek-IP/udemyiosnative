//
//  SectionsView.swift
//  udemyiosnative
//
//  Created by Dark Laki on 03/08/23.
//

import SwiftUI

struct SectionsView: View {
    @EnvironmentObject var bookData: BookAppData
    var orderList: [(key: String, value: [BookViewModel])] {
        let listGroup: [String: [BookViewModel]] =   Dictionary(grouping: bookData.bookData, by: { value in
            let index = value.title.startIndex
            let initial = value.title[index]
            
            return String(initial)
            
            
        })
        
        return listGroup.sorted(by: {$0.key < $1.key})
    }
    
    
    var body: some View {
        List{
           
            ForEach(orderList, id: \.key){ sections in
                
                Section(header: Text(sections.key)){
                    ForEach(sections.value){ book in
                        
                        CellBook2(book: book)
                        
                    }
                }
                
            }
           // .listSectionSeparator(.hidden)
            
            
        }
//        .environment(\.defaultMinListRowHeight, 100)
        
    }
}

struct CellBook2: View {
    @EnvironmentObject var bookData: BookAppData
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
            Spacer()
            Button(action: {
                removeBook(book: book)
            }, label: {
                Image(systemName: "trash")
                    .foregroundColor(.red)
            })
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

struct SectionsView_Previews: PreviewProvider {
    static var previews: some View {
        SectionsView().environmentObject(BookAppData())
    }
}
