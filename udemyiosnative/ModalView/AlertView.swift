//
//  AlertView.swift
//  udemyiosnative
//
//  Created by Mac Mini 1 on 25/08/23.
//

import SwiftUI

struct AlertView: View {
    @State var name: String = ""
    @State var openAlert: Bool = false
    var body: some View {
        VStack{
            TextField("Name",text: $name)
                .textFieldStyle(.roundedBorder)
            HStack{
                Spacer()
                Button("Save"){
                    openAlert = name.isEmpty
                }
            }
        }.padding()
            .alert("Error",isPresented: $openAlert,actions: {
                Button("Cancel",role: .cancel, action: {
                    openAlert = false
                })
                Button("Delete",role: .destructive){
                    name = ""
                }
                Button("Save Anyway", role: .none){
                    print("Save value")
                }
            },
                   
                   message: {
                Text("Insert your name")
            }
            )
    }
}

#Preview {
    AlertView()
}
