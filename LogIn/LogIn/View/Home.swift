//
//  Home.swift
//  LogIn
//
//  Created by Abdul Suraj on 15/07/2021.
//

import SwiftUI

struct Home: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isEyeSlashed = true
    
    var body: some View {
//        Outer Vtsack (Container)
        VStack{
            VStack(alignment: .leading, spacing: 15){
                
                Image(systemName:"arrow.left")
                    .foregroundColor(.white)
           
                    Text("Welcome back! Aegis Rider")
                        .foregroundColor(Color("white"))
                        .fontWeight(.heavy)
                        .font(.title3)
                
                    Text("Sign in to your account")
                        .foregroundColor(.white)
                        .font(.headline)
                        .fontWeight(.light)
                VStack{
                    //  email
                    TextField("Email", text : $email)
                    .padding(10)
                    .background(Color("white"))
                    .foregroundColor(Color("lightGreen"))
                }
                .cornerRadius(5)
                
                
//                password
                HStack{
                    TextField("Password", text : $password)
                        .padding(10)
                    .cornerRadius(30)
                    .background(Color("white"))
                        
                    Button(action: {
                        self.isEyeSlashed.toggle()
                        
                    }) {
                        
                        if isEyeSlashed {
                            Image(systemName: "eye.slash")
                        }
                        else{
                            Image(systemName: "eye")
                        }
                    }
//                    .padding(.trailing, 20)
//                    .padding(.top, 10)
//                    .background(Color("gray"))
                    .padding(.leading , -55)
                    .foregroundColor(.gray)
                
                    
                }
                .cornerRadius(5)
                
        
                    
                }
            
            VStack{
                Text("Forgot password?")
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .padding(30)
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: 20, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/30/*@END_MENU_TOKEN@*/, idealHeight:2, maxHeight: /*@START_MENU_TOKEN@*/.zero/*@END_MENU_TOKEN@*/, alignment: .trailing)
                
//                Button("Login", action: {
//                    //
//                })
//                .frame(width: 50, height: 50.0)
//                .cornerRadius(30)
                VStack{
                    Text("Login")
                        .foregroundColor(.white)
                        .frame(width: 300, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .cornerRadius(30)
                        .padding(10)
                        .background(Color("lightGreen"))
                }
                .cornerRadius(5)
                      
            }
           
           
            
            
           
        }
        .padding(20)
      
        

        
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .top)
        .background(Color.black)
        .ignoresSafeArea(.all)
        
      
        
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
