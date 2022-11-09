//
//  LoginView.swift
//  shopping
//
//  Created by Ella Götbring on 2022-11-07.
//

import SwiftUI

struct LoginView: View {
    
  @EnvironmentObject var dbConnection:DatabaseConnection
    @State var email = ""
    @State var password = ""
  
    
    var body: some View {
    
        VStack(spacing: 30){
            Text("Login").bold()
                .padding()
            
          //  Image("logo")
           //     .resizable()
           //     .frame(width: 350, height: 300)
            Text("Email:")
            TextField("", text: $email).textFieldStyle(.roundedBorder)
                .padding()
            Text("Password:")
            SecureField("", text: $password).textFieldStyle(.roundedBorder)
                .padding()
        .padding()
        Button("login"){
            dbConnection.LoginUser(email: email, password: password)
             
                  
            print("login pressed")
        }
        .font(.headline)
                   .foregroundColor(.white)
                   .padding()
                   .frame(width: UIScreen.main.bounds.width * 0.8)
                   .background(Color.green)
                   .cornerRadius(15.0)
        
        NavigationLink(destination: RegisterView(), label: {
            Text("register an account")
        })
    
        .padding()
 
    }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
       // LoginView() .previewDevice("iPhone 8")
       // LoginView() .previewDevice("iPhone 12 mini")
        //LoginView() .previewDevice("iPod touch (7th generation)")

    }
}
