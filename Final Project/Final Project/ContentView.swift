//
//  ContentView.swift
//  Final Project
//
//  Created by Hanan Dashti on 10/01/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var name = ""
    @State var age = ""
    @State var Email = ""
    @State var Gender = ""
    @State var h = ""
    @State var w = ""
    @State var StatickName = "Hanan"
    @State var TTarget: Int = 0 
    @State var paing = Color.blue
   
    
    var body: some View {
           
         
        NavigationView{
            ZStack{
            Image("g3")
                .resizable()
                .ignoresSafeArea()

        VStack{
            Text(" Walk & Charge ")
                .foregroundColor(.orange)
                .font(Font.custom("The Me", size: 40))
            
           // Spacer()
                //.font(.largeTitle)

//               .bold()
//               .padding()
            HStack{

NavigationLink(
    destination: ProffileDetails(userName: $name, Age: $age, email: $Email, gender: $Gender, height: $h, weight: $w, paing: $paing, TARGET: $TTarget),
    label: {
        Text("SIGN UP")
            .font(Font.custom("WinterYesterday", size: 20 ))
            //.bold()
            .frame(width: 150, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(.black)
            .background(Color.black.opacity(0.3))
            .clipShape(Capsule())
            .padding()

    })


NavigationLink(
    destination: Welcome(userName: $name, Age: $age, email: $Email, gender: $Gender, height: $h, weight: $w, paing: $paing, TARGET: $TTarget),
    label: {
        Text("SIGN IN")
            .font(Font.custom("WinterYesterday", size: 20 ))
            .frame(width: 150, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(.black)
            .background(Color.black.opacity(0.3))
            .clipShape(Capsule())
            .padding()
    })


            }
            Spacer()


        }

       }

    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



