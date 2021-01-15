//
//  Welcome.swift
//  Final Project
//
//  Created by Hanan Dashti on 12/01/2021.
//

import SwiftUI

struct Welcome: View {
    
    @State var counters =  0
    @State var ShowAlert = false
    @State var Coloree = Color.blue
    @State var showtarget = false
    @State var showProfail = false
    @State var showsignOut = false
    
    @Binding var userName: String
    @Binding var Age:String
    @Binding var email:String
    @Binding var gender:String
    @Binding var height:String
    @Binding var weight:String
    @Binding var paing: Color
    @State var cawnt  = Int()
    @Binding var TARGET:Int
    
//    var Name: String
  // @Binding var target: Int
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        
        ZStack{
            
            Image("IMG_7997")
                .resizable()
                .ignoresSafeArea()

        VStack{
            HStack{
               Text("Welcome")
                .font(Font.custom("Valentine Cute", size: 20 ))
                .foregroundColor(.purple)
                Text(userName)
                    .font(Font.custom("Valentine Cute", size: 20 ))
                    .foregroundColor(.orange)
                    //.padding()
            }
            
            HStack{
               Text("Target")
                .font(Font.custom("Valentine Cute", size: 20 ))
                .foregroundColor(.orange)
                Text(String(TARGET))
                    .font(Font.custom("Valentine Cute", size: 20 ))
                    .foregroundColor(.purple)
                
                    //.padding()
            }
            
            VStack{
                
                Text("You'r Steps")
                    .font(Font.custom("Valentine Cute", size: 20 ))
                    .font(.largeTitle)
                    .foregroundColor(.purple)
                Button(action: {
                    counters += 1
                    if counters == TARGET {
                    ShowAlert = true
                }
                }, label: {
                    Text("\(counters)")
                        .frame(width: 150, height: 140)
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .clipShape(Circle())
                        .padding()
                }).alert(isPresented: $ShowAlert, content: {
                    Alert(title: Text("CONGRATS!!"), message: Text("DO you want to Add new Target?"), dismissButton: .default(Text("SURE :) ")))
                })
                
                
               

            }
         
         
            
            //the toolBar
            
            VStack(alignment: .center)
            {

                NavigationLink(
                    destination: TargetDetailes(target: $TARGET),
                    isActive: $showtarget) {
                    Text("")
                }

                NavigationLink(
                    destination: ProffileDetails(userName: $userName, Age: $Age, email: $email, gender: $gender, height: $height, weight: $weight, paing: $paing, TARGET: $TARGET),
                    isActive: $showProfail) {
                    Text("")
                }

                NavigationLink(
                    destination: SignOut(),
                    isActive: $showsignOut) {
                    Text("")
                }

            }
            
            
            
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    
                    Menu("Edit") {
                    Section{
                        Button("Target") {
                           
                            self.showtarget = true
                        }
                        
                        Button("Profail") {
                           
                            self.showProfail = true
                        }
                        
                        Button("SignOut") {
                            presentation.wrappedValue.dismiss()
                            //self.showsignOut = true
                        }
                    }
                        
                        
                    }
                }
            }
        
        


                    }
                }
            }

        

       
}
        

    



//struct Welcome_Previews: PreviewProvider {
//    static var previews: some View {
//        Welcome(counter: <#Binding<Int>#>, label: <#String#>, color: <#Color#>)
//    }
//}

struct SaveButton: View {
    @Binding var counter: Int
    let label: String
    let color: Color
    var Target: Int
    
    var body: some View {
        VStack{
            
            Text(label)
                .font(.largeTitle)
            Button(action: {
                counter += 1
                
            }, label: {
                Text("\(counter)")
                    .frame(width: 150, height: 140)
                    .foregroundColor(.white)
                    .background(color)
                    .clipShape(Circle())
                    .padding()
            })
        }
    }
}

