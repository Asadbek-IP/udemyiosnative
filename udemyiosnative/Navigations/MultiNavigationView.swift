//
//  MultiNavigationView.swift
//  udemyiosnative
//
//  Created by Mac Mini 1 on 14/08/23.
//

import SwiftUI

struct MultiNavigationView: View {
    @EnvironmentObject var appData: BookAppData
    var body: some View {
        NavigationStack{
            
            
            /// Scroll
            //            ScrollViewReader { proxy in
            //                List(appData.bookData){ book in
            //
            //                    CellBook(book: book)
            //                        .id(book.id)
            //
            //                }
            //                .navigationTitle("Book")
            //                .toolbar{
            //                    ToolbarItem(placement: .topBarTrailing){
            //                        Button(action: {
            //                            if let lastIndex = appData.bookData.last?.id{
            //                                proxy.scrollTo(lastIndex, anchor: .bottom)
            //                            }
            //
            //                        }, label: {
            //                            Image(systemName: "arrow.down.doc")
            //                        })
            //
            //
            //                    }
            //
            //                    ToolbarItem(placement: .topBarTrailing){
            //                        Button(action: {
            //                            if let lastIndex = appData.bookData.first?.id {
            //                                proxy.scrollTo(lastIndex, anchor: .bottom)
            //                            }
            //                        }, label: {
            //                            Image(systemName: "arrow.up.doc")
            //                        })
            //                    }
            //            }
            //            }
            
            
            /// bottom tab bar
            //            List(appData.bookData){ book in
            //
            //                               CellBook(book: book)
            //                                   .id(book.id)
            //
            //                           }
            //                           .navigationTitle("Book")
            //                           .toolbar(.hidden,for: .navigationBar)
            //                           .toolbar{
            //                               ToolbarItem(placement: .bottomBar){
            //                                   HStack{
            //                                       Button("Show"){
            //                                           print("tap tap")
            //                                       }
            //                                   }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity,alignment: .trailing)
            //
            //
            //
            //
            //                               }
            //
            //
            //                       }
            
            
            
//            List(appData.bookData){ book in
//                
//                CellBook(book: book)
//                    .id(book.id)
//                
//            }
//            .navigationTitle("Book")
//            .navigationBarTitleDisplayMode(.inline)
//            .toolbar{
//                ToolbarItemGroup(placement: .primaryAction){
//                    Button(action: {
//                        print("Adding book...")
//                    }, label: {
//                        Image(systemName: "plus.app")
//                    })
//                }
//                ToolbarItemGroup(placement: .secondaryAction){
//                    Button(action: {
//                        print("Sort list..")
//                    }, label: {
//                       
//                       Label("Sort book", systemImage: "arrow.up.arrow.down")
//                    })
//                }
//
//                
//            }
//            .toolbarRole(.editor)
            
            
//            List(appData.bookData){ book in
//                
//                CellBook(book: book)
//                    .id(book.id)
//                
//            }
//            .navigationTitle("Book")
//            .navigationBarTitleDisplayMode(.inline)
//            .toolbar(id: "myBar"){
//                ToolbarItem(id: "sort", placement: .secondaryAction){
//                    Button(action: {
//                        print("Adding book...")
//                    }, label: {
//                        Label("Sort book", systemImage: "arrow.up.arrow.down")
//                    })
//                }
//                ToolbarItem(id: "settings", placement: .secondaryAction){
//                    Button(action: {
//                        print("Sort list..")
//                    }, label: {
//                       Label("Settings", systemImage: "gear")
//                      
//                    })
//                }
//
//                
//            }
//            .toolbarRole(.editor)
            
            List(appData.bookData){ book in
                
                CellBook(book: book)
                    .id(book.id)
                
            }
            .navigationTitle("Book")
            
            .toolbar{   
                Menu(content: {
                    Button("Option 1"){print("Option1")}
                    Button("Option 2"){print("Option2")}
                    Button("Option 3"){print("Option3")}

                }, label: {
                    Image(systemName: "filemenu.and.selection")
                })

                
            }
           
            
            
        }
    }
}

#Preview {
    MultiNavigationView().environmentObject(BookAppData())
}
