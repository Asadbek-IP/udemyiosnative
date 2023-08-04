//
//  PickerView.swift
//  udemyiosnative
//
//  Created by Dark Laki on 04/08/23.
//

import SwiftUI

struct PickerView: View {
    @State var selectedValue: String = "NO City"
    @State var selectedIndex: Int = 0
    let cities: [String] = ["Tashkent","Urganch","Samarqand"]
    var body: some View {
        VStack{
            Text(selectedValue)
//            Picker("Cities:", selection: $selectedValue, content: {
//                ForEach(cities,id: \.self){ cityName in
//
//                    Text(cityName)
//
//                }
//            }).pickerStyle(.automatic)
            
            Picker("Cities:",selection: $selectedIndex){
                ForEach(cities.indices,id:\.self){ index in
                    
                    Text(cities[index])
                        .tag(index)
                    
                }
            }
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
