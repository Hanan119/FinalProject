//
//  ProffileDetails.swift
//  Final Project
//
//  Created by Hanan Dashti on 10/01/2021.
//

import SwiftUI

struct ProffileDetails: View {
    
    @Binding var userName: String
    @Binding var Age:String
    @Binding var email:String
    @Binding var gender:String
    @Binding var height:String
    @Binding var weight:String
    @Binding var paing: Color
    //@State var cawnt  = Int()
    @Binding var TARGET: Int
   
    @Environment(\.presentationMode) var presentation
    
    var body: some View {

        ZStack{
        
        Image("IMG_7997")
            .resizable()
            .ignoresSafeArea()
        
        VStack{
            
            Text("Profail Detailes")
           
                .font(.largeTitle)
                //.frame(width: 150, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.black)
                .background(Color.black.opacity(0.3))
                //.clipShape(Capsule())
                .padding()
        
            TextField("Name " , text: $userName )
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundColor(Color.blue)
                .padding()
            TextField("Age " , text: $Age )
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundColor(Color.blue)
                .padding()
            TextField("Email " , text: $email )
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundColor(Color.blue)
                .padding()
            TextField("Gender " , text: $gender )
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundColor(Color.blue)
                .padding()
            TextField("Your Height " , text: $height )
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundColor(Color.blue)
                .padding()
            TextField("Your Weight " , text: $weight )
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundColor(Color.blue)
                .padding()
            Stepper(value: $TARGET, in: 1...360){
                Text("")
            }.frame(width:300)
            
            .padding(.trailing,200)
            Text("\(TARGET)")
            //Text("Target Steps")
                //.padding()
            
            Button(action: {
                
                paing = Color.green
                presentation.wrappedValue.dismiss()
                
            }, label: {
                //if paing == Color.blue{
//                NavigationLink(
//                                       destination: Welcome(userName: $userName, Age: $Age, email: $email, gender: $gender, height: $height, weight: $weight, paing: $paing, TARGET: $TARGET),
//                                       label: {
                Text("Save")
                    
                    .font(.title2)
                    .frame(width: 130, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .background(paing)
                    .clipShape(Capsule())
                
//                else {
//                    NavigationLink(
//                        destination: Welcome(counters: 0, Name: userName, target:$TARGET ),
//                        label: {
//                            Text("Saved")
//                                .font(.title2)
//                                .frame(width: 130, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                                .foregroundColor(.white)
//                                .background(Color.green)
//                                .clipShape(Capsule())
                     //   })
//
//                }
            })
            
            
            
        }.navigationTitle("SIGN UP ")
        .padding()
}
}
}
//struct ProffileDetails_Previews: PreviewProvider {
//    static var previews: some View {
//        ProffileDetails()
//    }
//}



