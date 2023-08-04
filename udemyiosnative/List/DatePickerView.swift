//
//  DatePickerView.swift
//  udemyiosnative
//
//  Created by Dark Laki on 04/08/23.
//

import SwiftUI

struct DatePickerView: View {
    @State var selectDate: Date = Date()
    var body: some View {
        VStack(alignment: .center){
            Text(String(selectDate.formatted(.dateTime.day().month())))
            
            DatePicker("", selection: $selectDate, in: Date()...,displayedComponents: .date)
                .labelsHidden()
                .datePickerStyle(.compact)
        }
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
