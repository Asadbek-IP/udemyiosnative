//
//  PopoverView.swift
//  udemyiosnative
//
//  Created by Mac Mini 1 on 25/08/23.
//

import SwiftUI

struct PopoverView: View {
    @State var showPopover: Bool = false
    var body: some View {
        VStack{
            Button("Show popover"){
                showPopover = true
            }
            .popover(isPresented: $showPopover){
                HelpView()
            }
        }
    }
}

#Preview {
    PopoverView()
}
