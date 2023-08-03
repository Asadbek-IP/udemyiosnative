//
//  GridItemView.swift
//  udemyiosnative
//
//  Created by Dark Laki on 02/08/23.
//

import SwiftUI

struct GridItemView: View {
    @EnvironmentObject var obj: BookAppData
    
    let guides = [
//        GridItem(.flexible(minimum: 75),alignment: .bottom),
//        GridItem(.flexible(minimum: 75),alignment: .bottom),
//        GridItem(.flexible(minimum: 75),alignment: .top)
        
        GridItem(.adaptive(minimum: 200))
    ]
    var body: some View {
        ScrollView{
            LazyVGrid(columns: guides){
                ForEach(obj.bookData){ book in
                    
                    Image(book.cover)
                        .resizable()
                        .scaledToFit()
                        
                    
                }
            }
        }
    }
}

struct GridItemView_Previews: PreviewProvider {
    static var previews: some View {
        GridItemView().environmentObject(BookAppData())
    }
}
