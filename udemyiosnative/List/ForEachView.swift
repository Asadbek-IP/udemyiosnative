//
//  ForEachView.swift
//  udemyiosnative
//
//  Created by Dark Laki on 02/08/23.
//

import SwiftUI

struct ForEachView: View {
    @EnvironmentObject var bookDataObj: BookAppData
    @State var title: String = ""
    var body: some View {
       // VerticalScroll(bookDataObj: bookDataObj, title: $title)
        
        ScrollViewReader { proxy in
            ScrollView(.horizontal,showsIndicators: false){
                LazyHStack(spacing: 0){
                    ForEach(bookDataObj.bookData){ book in
                        HorizontalScrollView(book: book)
                            .id(book.id)
                    }
                    Button("< Go Back"){
                        if let firstIdentifier = bookDataObj.bookData.first?.id {
                            proxy.scrollTo(firstIdentifier, anchor: .zero)
                        }
                    }
                }
            }
        }
    }
}

struct ForEachView_Previews: PreviewProvider {
    static var previews: some View {
        ForEachView().environmentObject(BookAppData())
    }
}

struct HorizontalScrollView: View {
    let book: BookViewModel
    var body: some View{
        VStack{
            Image(book.cover)
                .resizable()
                .scaledToFit()
                .frame(width: 80,height: 100)
            
            Text(book.title)
                .font(.caption)
                //.lineLimit(1)
                .fixedSize()
        }.frame(width: 100,height: 150)
            .truncationMode(.middle)
    }
}

struct VerticalScroll: View {
    let bookDataObj: BookAppData
    @Binding var title: String
    var body: some View {
        VStack {
            TextField("Title",text: $title)
                .padding()
            ScrollView {
                LazyVStack(alignment: .leading){
                    
                    ForEach(bookDataObj.bookData){ book in
                        
                        HStack(alignment: .top){
                            Image(book.cover)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                
                            
                            VStack(alignment: .leading,spacing: 2){
                                Text(book.title)
                                    .bold()
                                Text(book.auther)
                                Text(book.year).font(.caption)
                                
                            }.padding(.top,5)
                            
                        }
                        Divider()
                        
                    }
                    
                    
                }
            }
            .scrollIndicators(.never)
            .scrollDismissesKeyboard(.immediately)
        }
        .padding(.leading,16)
    }
}
