//
//  TargetDetailes.swift
//  Final Project
//
//  Created by Hanan Dashti on 13/01/2021.
//

import SwiftUI

struct TargetDetailes: View {
    @Binding var target: Int
    @State var Saved = Color.blue
    
    var body: some View {
        ZStack{
            
            Image("IMG_7997")
                .resizable()
                .ignoresSafeArea()
        
        VStack{
            
            Stepper("  your Target    ",       value: $target , in: 1...360)
                .padding()
            Text("\(target)")
                .foregroundColor(.black)
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.black.opacity(0.2))
                
                .padding()
            
            
            
            Button(action: {

                Saved = Color.green

            }, label: {
              //  if Saved == Color.blue{
                Text("Save")
                    .font(.title2)
                    .frame(width: 130, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .background(Saved)
                    .clipShape(Capsule())
                
//                } else {
//                    NavigationLink(
//                        destination: Welcome(counters: 0, Name: "_", target: $target  ),
//                        label: {
//                            Text("Saved")
//                                .font(.title2)
//                                .frame(width: 130, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                                .foregroundColor(.white)
//                                .background(Color.green)
//                                .clipShape(Capsule())
//                        })
//
//                }
            })
            
        }
        }
    }
}

//struct TargetDetailes_Previews: PreviewProvider {
//    static var previews: some View {
//        TargetDetailes(target: 5)
//    }
//}
