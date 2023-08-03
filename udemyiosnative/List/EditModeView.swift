//
//  EditModeView.swift
//  udemyiosnative
//
//  Created by Dark Laki on 03/08/23.
//

import SwiftUI

struct EditModeView: View {
    @EnvironmentObject var bookData: BookAppData
    @State private var selectedRows: Set<BookViewModel.ID> = []
    @State private var isActive: Bool = false
    var body: some View {
        VStack {
            
            ///#EditButton
        
//            EditButton()
//            List{
//                ForEach(bookData.bookData){ book in
//
//                    CellBook(book: book)
//
//                }.onDelete{ indexes in
//                    bookData.bookData.remove(atOffsets: indexes)
//                }
//                .onMove{ source, destination in
//
//                    bookData.bookData.move(fromOffsets: source, toOffset: destination)
//                }
//            }
//            .listStyle(.plain)
            
            HStack{
                Button(isActive ? "Done" : "Edit"){
                    isActive.toggle()
                }
                Spacer()
                Button(action: {
                    removeSelected()
                }, label: {
                    Image(systemName: "trash")
                }).disabled(selectedRows.count == 0 ? true : false)
            }.padding()
            
            List(selection: $selectedRows){
                ForEach($bookData.bookData){ $book in
                    
                    CellBook(book: book)
                        .onTapGesture {
                            book.selected.toggle()
                        }
                    
                }
            }.listStyle(.plain)
                .environment(\.editMode, .constant(isActive ? EditMode.active : EditMode.inactive))
            
        }
    }
    
    func removeSelected(){
        var indexes = IndexSet()
        for item in selectedRows {
            if let index = bookData.bookData.firstIndex(where: {$0.id == item}){
                indexes.insert(index)
            }
        }
        
        bookData.bookData.remove(atOffsets: indexes)
        selectedRows = []
        isActive = false
       
    }
}

struct EditModeView_Previews: PreviewProvider {
    static var previews: some View {
        EditModeView().environmentObject(BookAppData())
    }
}
