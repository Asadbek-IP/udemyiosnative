//
//  BookDetailsScreen.swift
//  udemyiosnative
//
//  Created by Mac Mini 1 on 21/08/23.
//

import SwiftUI

struct BookDetailsScreen: View {
    @Binding var path: NavigationPath
    var book: BookViewModel
    var body: some View {
        VStack{
            Text(book.title).font(.system(size: 20)).bold()
            Text(book.auther)
//            NavigationLink(value: "Picture View",label: {
//                Image(book.cover)
//                    .resizable()
//                    .scaledToFit()
//            })
            Button(action: {
                path.append("Picture View")
            }, label: {
                Image(book.cover)
                                    .resizable()
                                    .scaledToFit()
            })
        }
        .navigationTitle("Book")
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .topBarLeading){
                Button("Go back"){
                    path.removeLast()
                }
            }
        }
        .navigationDestination(for: String.self, destination: { _ in
            
            PictureView(path: $path, book: book)
        })
    }
}

#Preview {
    BookDetailsScreen(path: .constant(NavigationPath()), book:BookViewModel(book: Book(title: "Steve Jobs", auther: "Walter Isaacson", cover: "book1", year: 2011, selected: false)))
 
}
