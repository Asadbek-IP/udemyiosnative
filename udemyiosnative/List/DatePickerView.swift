//
//  DatePickerView.swift
//  udemyiosnative
//
//  Created by Dark Laki on 04/08/23.
//

import SwiftUI

struct DatePickerView: View {
    @State var selectDate: Date = Date()
    @State var selectedsDate: Set<DateComponents> = []
    @State var myDates: String = ""
    @State var isActive: Bool = false
    @State var showImagePicker: Bool = false
    @State var totalValue: Int = 10
    var body: some View {
        ZStack {
            VStack{
                MyIcon().foregroundColor(Color(red: 0.37, green: 0.32, blue: 0.94)).frame(maxWidth: 250,maxHeight: 207)
                    .padding([.top,.leading],-80)
                Spacer()
                MyIcon2()
                    .foregroundColor(Color(red: 0.37, green: 0.32, blue: 0.94)).frame(maxWidth: 250,maxHeight: 207)
                        .padding([.bottom],-70)
                        .padding([.trailing],-120)
                
                
            }
            .frame(maxWidth: .infinity)
            .background(Color(red: 0.43, green: 0.38, blue: 0.97))
            
            VStack(alignment: .center){
                            Image("logo")
                    .resizable()
                    .frame(maxWidth: 113,maxHeight: 113)
                    
                
                Text("Megasoft")
                    .font(
                    Font.custom("Montserrat", size: 34)
                        .weight(.bold)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.top,12)
                    .padding(.bottom,2)
                
                Text("Tizimlashtirilgan sistema")
                .font(
                Font.custom("Montserrat", size: 12)
                .weight(.semibold)
                )
                .foregroundColor(.white)
                
                VStack{
                    HStack{
                        Image(systemName: "house")
                            .foregroundColor(Color(red: 0.37, green: 0.32, blue: 0.94))
                        Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 1, height: 20)
                        .background(Color(red: 0.37, green: 0.32, blue: 0.94))
                        TextField("Kompaniyangiz nomi",text: $myDates)
                    }
                    .padding(16)
                    .frame(width: 300, alignment: .leading)
                    .background(.white)
                    .cornerRadius(16)
                    .overlay(
                    RoundedRectangle(cornerRadius: 16)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.51, green: 0.51, blue: 0.51), lineWidth: 1)
                    )
                    .padding()
                    
                    HStack{
                        Text("Davom ettirish")
                        .font(
                        Font.custom("Montserrat", size: 18)
                        .weight(.semibold)
                        )
                        .foregroundColor(.white)
                        Spacer()
                        Image(systemName: "arrow.right")
                            .foregroundColor(.white)
                            .font(.title2)
                    }
                    
                    .padding(.horizontal, 32)
                    .padding(.vertical, 20)
                    .frame(width: 300, alignment: .center)
                    .background(Color(red: 0.43, green: 0.38, blue: 0.97))
                    .cornerRadius(32)
                    .shadow(color: Color(red: 0.37, green: 0.32, blue: 0.94).opacity(0.4), radius: 7, x: 4, y: 4)
                    
                    
                    
                }
                .frame(maxWidth: .infinity,maxHeight: 248)
                .background(.white)
                .cornerRadius(42)
                .padding(6)
                
                
                    
                            
//                                        Text(String(selectDate.formatted(.dateTime.day().month())))
//
//                                        DatePicker("", selection: $selectDate, in: Date()...,displayedComponents: .date)
//                                            .labelsHidden()
//                                            .datePickerStyle(.compact)
//
//
//                                        MultiDatePicker("Multi select date", selection:$selectedsDate)
//                                        Spacer()
//
//                                        Text(myDates)
            
//                            Form{
//                                Section(header: Text("Options"), footer: Text("Active the options you want to see")){
//                                    Toggle("Active",isOn: $isActive)
//
//                                    Toggle("Show Pictures",isOn: $showImagePicker)
//                                }
//
//                                Section(header: Text("Values"), footer: Text("Insert the number of items to display")
//
//                                ){
//                                    LabeledContent("Total"){
//                                        Spacer()
//                                        Text(String(totalValue))
//                                        Stepper("", value: $totalValue, in: 0...10)
//                                            .labelsHidden()
//                                    }
//                                }
//
//                                DisclosureGroup("Controls"){
//                                    Toggle("Active",isOn: $isActive)
//
//                                    Toggle("Show Pictures",isOn: $showImagePicker)
//                                }
//                                DisclosureGroup("Controls"){
//                                    Toggle("Active",isOn: $isActive)
//
//                                    Toggle("Show Pictures",isOn: $showImagePicker)
//                                }
//
//                            }
                        
            
            
            
            
                        }
                        
                        
            
     
        }
        //        .onChange(of: selectedsDate){ values in
        //           // print(values)
        //            let days = values.map({ value in
        //                return String(value.day!)
        //
        //
        //            })
        //            print(days)
        //
        //           myDates = days.joined( separator: ",")
        //
        //        }
    }
        
            //.padding([.top,.leading],-80)
  
    

}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}

struct MyIcon: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.58255*width, y: 0.47368*height))
        path.addCurve(to: CGPoint(x: width, y: -0.10526*height), control1: CGPoint(x: 0.8184*width, y: 0.36374*height), control2: CGPoint(x: 0.95912*width, y: 0.04191*height))
        path.addLine(to: CGPoint(x: width, y: -0.21053*height))
        path.addLine(to: CGPoint(x: -0.17925*width, y: -0.21053*height))
        path.addLine(to: CGPoint(x: -0.17925*width, y: 0.19298*height))
        path.addCurve(to: CGPoint(x: -0.10613*width, y: 0.95614*height), control1: CGPoint(x: -0.17925*width, y: 0.53606*height), control2: CGPoint(x: -0.16462*width, y: 1.16901*height))
        path.addCurve(to: CGPoint(x: 0.58255*width, y: 0.47368*height), control1: CGPoint(x: -0.03302*width, y: 0.69006*height), control2: CGPoint(x: 0.28774*width, y: 0.61111*height))
        path.closeSubpath()
        return path
    }
}

struct MyIcon2: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.40045*width, y: 0.56136*height))
        path.addCurve(to: CGPoint(x: 0, y: 1.18011*height), control1: CGPoint(x: 0.17421*width, y: 0.67886*height), control2: CGPoint(x: 0.03922*width, y: 1.02281*height))
        path.addLine(to: CGPoint(x: 0, y: 1.29261*height))
        path.addLine(to: CGPoint(x: 1.13122*width, y: 1.29261*height))
        path.addLine(to: CGPoint(x: 1.13122*width, y: 0.86136*height))
        path.addCurve(to: CGPoint(x: 1.06109*width, y: 0.04573*height), control1: CGPoint(x: 1.13122*width, y: 0.49469*height), control2: CGPoint(x: 1.11719*width, y: -0.18177*height))
        path.addCurve(to: CGPoint(x: 0.40045*width, y: 0.56136*height), control1: CGPoint(x: 0.99095*width, y: 0.33011*height), control2: CGPoint(x: 0.68326*width, y: 0.41448*height))
        path.closeSubpath()
        return path
    }
}
