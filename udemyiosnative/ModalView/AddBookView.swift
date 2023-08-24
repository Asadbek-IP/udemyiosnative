//
//  AddBookView.swift
//  udemyiosnative
//
//  Created by Mac Mini 1 on 24/08/23.
//

import SwiftUI

struct AddBookView: View {
    @EnvironmentObject var bookAppData: BookAppData
    @Environment(\.dismiss) var dismiss
    @State private var titleInput = ""
    @State private var authorInput = ""
    @State private var yearInput = ""
    var book: BookViewModel?

    var body: some View {
        VStack(alignment: .trailing){
            HStack{
                Text(book == nil ? "Add Book" : "Edit Book" )
                Spacer()
                Button("Close"){
                    dismiss()
                }.padding([.top,.trailing], 10)
            }
            //Spacer()
            TextField(text: $titleInput, label: {
                Text("Insert title")
            })
            .textFieldStyle(.roundedBorder)
            TextField(text: $authorInput, label: {
                Text("Insert author")
            })
            .textFieldStyle(.roundedBorder)
            TextField(text: $yearInput, label: {
                Text("Insert year")
            })
            .textFieldStyle(.roundedBorder)
            .keyboardType(.numberPad)
            Button("Save"){
                storeBook()
            }
            .buttonStyle(.borderedProminent)
            .padding()
            Spacer()
        }
        .onAppear{
            titleInput = book?.title ?? ""
            authorInput = book?.auther ?? ""
            yearInput = book?.year ?? ""
        }
        .padding()
      
       
    }
    
    func storeBook() {
        let title = titleInput.trimmingCharacters(in: .whitespaces)
        let author = authorInput.trimmingCharacters(in: .whitespaces)
        
        if let year = Int(yearInput), !titleInput.isEmpty && !authorInput.isEmpty {
            
            if let index = bookAppData.bookData.firstIndex(where: {$0.id == book?.id}){
                let newBook = BookViewModel(book: Book(title: title, auther: author, cover: bookAppData.bookData[index].cover, year: year, selected: false))
                bookAppData.bookData[index] = newBook
            }else{
                let newBook = BookViewModel(book: Book(title: title, auther: author, cover: "nocover", year: year, selected: false))
                bookAppData.bookData.append(newBook)
            }
            
           
            
            
           
        }
        dismiss()
    }
}

#Preview {
    AddBookView()
}
