//
//  PictureView.swift
//  udemyiosnative
//
//  Created by Mac Mini 1 on 24/08/23.
//

import SwiftUI

struct PictureView: View {
    @Binding var path: NavigationPath
    let book: BookViewModel
    var body: some View {
        VStack{
            Image(book.cover)
                .resizable()
                .scaledToFit()
            Spacer()
        }
        .navigationTitle("Cover")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .topBarLeading){
                Button("Go back"){
                    path.removeLast()
                }
            }
            ToolbarItem(placement: .topBarTrailing){
                Button("Go back to List"){
                    path = NavigationPath()
                }
                
            }
        }
    }
}

//#Preview {
//    PictureView()
//}
