//
//  ContentView.swift
//  udemyiosnative
//
//  Created by Dark Laki on 27/07/23.
//

import SwiftUI

struct MyToggleStyle: ToggleStyle{
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.label
                .font(.title)
            Image(systemName: "checkmark.square.fill")
                .font(.title)
                .foregroundColor(configuration.isOn ? .green : .gray)
                .onTapGesture {
                    configuration.$isOn.wrappedValue.toggle()
                }
        }
    }
}

struct MyStyle: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        let pressed: Bool = configuration.isPressed
        return configuration.label
            .padding()
            .border(Color.green , width: 5)
            .scaleEffect(pressed ? 1.2 : 1.0)
            .transformEffect(CGAffineTransform(rotationAngle: -30 * (.pi / 180)))
            
    }
}

enum FocusName: Hashable{
    case name
    case surname
}

struct ContentView: View {
    //@EnvironmentObject var obj: AplicationData
    //@ObservedObject var appData: AplicationData
    @Environment(\.colorScheme) var mode
    @FocusState var focusName: FocusName?
    //@Stat//ivate var nameInput: String = ""
    @State private var surname: String = ""
    @State private var password: String = ""
    @State private var longText: String = ""
    @State private var isActive: Bool = true
    @State private var sliderValue: Float = 2
    @State private var progressValue: Float = 5
    @State private var stapperValue: Float = 0
    @State private var groupDown: Bool = true
    @State private var autoc: Bool = true
    @State private var capi: Bool = true
    @State private var editable: Bool = true




   
    //    @State private var itemcolor = false
    //
    //    init() {
    //      _inputText = State(initialValue: "Hello World")
    //    }
    //
    //    var body: some View {
    //        VStack {
    //           HeaderTitle(title: $title)
    //            TextField("Input title",text: $inputText)
    //                .textFieldStyle(.roundedBorder)
    //            Button(action: {
    //                itemcolor = true
    //                _title.wrappedValue = _inputText.wrappedValue
    //                _inputText.wrappedValue = ""
    //            }, label: {
    //                Text("Change title")
    //            })
    //
    //        }
    //        .padding()
    //    }
    
    var body: some View{
        //        Image(systemName: "trash")
        //            .font(Font.system(size: 80))
        //            .foregroundColor(mode == .dark ? Color.yellow : Color.blue)
        //            .symbolVariant(mode == .dark ? .fill : .circle)
        
        
        //                VStack {
        //                    Text(obj.userData.header)
        //                    TextField("Input title",text: $obj.userData.book.title)
        //                        .textFieldStyle(.roundedBorder)
        //                    Button(action: {
        //
        //                    }, label: {
        //                        Text("Change title")
        //                    })
        //
        //                }
        //                .padding()
        //
        //    }
        
        //        VStack{
        //            Text("Default title")
        //                .background(isActive ? Color.green : Color.clear)
        //                .padding()
        //
        //            Button( "Change title"){
        //                self.isActive.toggle()
        //            }
        //            .disabled(false)
        //
        //
        //        }
        
        // VStack{
        //            HStack{
        ////                Button("Cancel"){
        ////                    print("cancel action")
        ////                }
        ////                .buttonStyle(.bordered)
        //
        //                Button("Delete",role: .destructive){
        //                    print("Delete Item")
        //                }
        //                .buttonStyle(.bordered)
        //
        //                Spacer()
        //                Button("Send"){
        //                    print("Send Action")
        //                }
        //                .buttonStyle(.borderedProminent)
        //            }
        //            Spacer()
        
        //            Button(action: {
        //                print("send message")
        //            }, label: {
        //                HStack{
        //                    Text("Send ")
        //
        //                    Image(systemName: "paperplane.fill")
        //                        .imageScale(.large)
        //
        //
        //                }
        //            })
        //            .buttonStyle(.borderedProminent)
        //            .font(.largeTitle)
        //            .controlSize(.large)
        //        }.padding()
        
        VStack{
            // Text("Default title")
            //                Button("Change size"){
            //                    print("change")
            //                }
            ////                .buttonStyle(MyStyle())
            //                Spacer()
            //                Text(title)
            //                    .lineLimit(1)
            //                    .font(.title2)
            //                    .padding()
            //                    .background(Color.yellow)
            //                    .textInputAutocapitalization(.words)
            //
            //                TextField("Insert name",text: $nameInput)
            //
            //                    .border(Color.blue,width: focusName == .name ? 2 : 0)
            //
            //                    .textFieldStyle(.roundedBorder)
            //                    .padding(5)
            //                    .submitLabel(.continue)
            //                    .focused($focusName, equals: .name)
            //
            //                TextField("Surname",text: $surname)
            //
            //                    .keyboardType(.numbersAndPunctuation)
            //                    .textFieldStyle(.roundedBorder)
            //                    .border(Color.blue,width: focusName == .surname ? 2 : 0)
            //
            //                    //.submitLabel(.continue)
            //                    .padding(5)
            ////                    .onSubmit({
            ////                        saveWithSumbit()
            ////                    })
            //                    .focused($focusName, equals: .surname)
            //                    .lineLimit(5)
            //
            //                SecureField("password",text: $password)
            //                    .padding()
            //                    .textFieldStyle(.roundedBorder)
            //
            //                TextEditor(text: $longText)
            //                    .multilineTextAlignment(.leading)
            //                    .lineSpacing(5)
            //                    .disableAutocorrection(true)
            //                    .padding(8)
            //
            //                Button("save"){
            //                    let tempName = nameInput.trimmingCharacters(in: .whitespaces)
            //                    let tempSurname = surname.trimmingCharacters(in: .whitespaces)
            //
            //                    if !tempName.isEmpty && !tempSurname.isEmpty {
            //
            //                        title = tempName + tempSurname
            //                        focusName = nil
            //                    }
            //
            //
            //                }
            //                .buttonStyle(.borderedProminent)
            //                .disabled(nameInput.trimmingCharacters(in: .whitespaces).isEmpty || surname.trimmingCharacters(in: .whitespaces).isEmpty)
            
            //            Toggle("Enabled",isOn: $isActive)
            //
            //            .padding(30)
            //            .toggleStyle(MyToggleStyle())
            //
            //
            //            }
            
            //            Text("Slider value: \(sliderValue.formatted(.number.precision(.fractionLength(0))))")
            //                .background(isActive ? .green : .clear)
            //            Slider(value: $sliderValue, in: 1...10,step: 1.0, onEditingChanged: {
            //                self.isActive = $0
            //            }).padding()
            
            //            ProgressView(value: progressValue, total: 10)
            //                .progressViewStyle(.circular)
            
            //
            //            HStack{
            //                Text("Counter Value: \(stapperValue.formatted())")
            //                Image(systemName: groupDown ? "arrow.up" : "arrow.down")
            //                    .foregroundColor(groupDown ? .green
            //                                     : .red)
            //                Stepper("Counter", onIncrement: {
            //                    stapperValue+=5
            //                    groupDown = true
            //                },
            //                        onDecrement: {
            //                    stapperValue-=5
            //                    groupDown = false
            //                }
            //
            //            )
            //
            //            .labelsHidden()
            //                    .padding()
            //            }
            //
            //
            //            GroupBox("Settings"){
            //                VStack{
            //                    Toggle("Autocorrection", isOn: $autoc)
            //                    Toggle("Capilations", isOn: $capi)
            //                    Toggle("Editable", isOn: $editable)
            //
            //                }
            //            }
            
            
            GeometryReader{ geometry in
                let isPortired = geometry.size.height > geometry.size.width
                let message = isPortired ? "Portired" : "Landshap"
                
                VStack{
//                    Text(message)
                    
                    Image("city")
                        .resizable()
                        .scaledToFit()
                        
                        .frame(width: geometry.size.width,height: geometry.size.height)
                        .background(.gray)
                }.frame(minWidth:0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                
            }
            
        }
        
        //    func saveWithSumbit(){
        //        title = nameInput + surname
        //    }
        
        
        //struct HeaderTitle: View {
        //    @Binding var title: String
        //
        //    let counter: Int
        //    init(title: Binding<String>){
        //        _title = title
        //
        //        counter = _title.wrappedValue.count
        //    }
        //    var body: some View {
        //        Text(title + " " + String(counter))
        //    }
        //}
        
        
    }
        
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                //        ContentView().preferredColorScheme(.light)
                //            .environmentObject(AplicationData())
                
                ContentView()
            }
        }
    }
    
    

