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
                .foregroundColor(.purple)
                .font(Font.custom("Valentine Cute", size: 35))
                //.padding()
        
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
            Stepper("Steps Target", value: $TARGET, in: 1...360)
        
            Text("\(TARGET)")
                .padding()
            
            Button(action: {
                
                paing = Color.green
                presentation.wrappedValue.dismiss()
                
            }, label: {
             
                Text("Save")
                    
                    .font(.title2)
                    .frame(width: 130, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .background(paing)
                    .clipShape(Capsule())
                

            })
            
            
        }//.navigationTitle(" SIGN UP ")
        .padding()
            
            

}
}
}
//struct ProffileDetails_Previews: PreviewProvider {
//    static var previews: some View {
//        ProffileDetails()
//    }
//}



