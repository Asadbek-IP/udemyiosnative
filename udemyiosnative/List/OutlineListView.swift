//
//  OutlineListView.swift
//  udemyiosnative
//
//  Created by Dark Laki on 04/08/23.
//



import SwiftUI

struct MainItem: Identifiable{
    
    var id = UUID()
    var name: String!
    var options: [MainItem]!
    
}

class ContentViewData: ObservableObject{
    @Published var items: [MainItem]
    
    init() {
        items = [
            MainItem(name: "Food",options: [
                
                MainItem(name: "Oatmeal",options: nil),
                MainItem(name: "Bagales",options: nil),
                MainItem(name: "Brownies", options: nil),
                
                MainItem(name: "Cheese", options: [
                    MainItem(name: "Roquefort",options: nil),
                    MainItem(name: "Mozzarella", options: nil),
                    MainItem(name: "Cheddar", options: nil),
                ]),
                
                MainItem(name: "Cookies", options: nil),
                MainItem(name: "Donuts",options: nil),
                
                
            ]),
            MainItem(name: "Beverages",options: [
                MainItem(name: "Coffee",options: nil),
                MainItem(name: "Juice",options: nil),
                MainItem(name: "Lemonade", options: nil)
                
            ])
            
        ]
    }
}

struct OutlineListView: View {
    @ObservedObject var contentData: ContentViewData
    var body: some View {
//        List(contentData.items, children: \.options){ item in
//            Text(item.name)
//
//        }
        
        List{
            ForEach(contentData.items){ item in
                
                Section(header: Text(item.name)){
                    OutlineGroup(item.options ?? [],children: \.options){ item in
                        Text(item.name)
                    }
                }
                
            }
        }.listStyle(.sidebar)
    }
}

struct OutlineListView_Previews: PreviewProvider {
    static var previews: some View {
        OutlineListView(contentData: ContentViewData())
    }
}
