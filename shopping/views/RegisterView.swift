//
//  RegisterView.swift
//  shopping
//
//  Created by Ella Götbring on 2022-11-07.
//

import SwiftUI

struct RegisterView: View {
    
    @EnvironmentObject var dbConnection:DatabaseConnection
    @State var email = ""
    @State var password = ""
    
    var body: some View {
       
        
        VStack(spacing: 30){
            Text("Register an account").bold()
                .padding()
        
            Text("Email")
            TextField("", text: $email).textFieldStyle(.roundedBorder)
            
                .padding()
            Text("Password")
            SecureField("", text: $password).textFieldStyle(.roundedBorder)
                .padding()
            
    
        .padding()
        Button("register"){
           dbConnection.RegisterUser(email: email, password: password)
            print("register pressed")
        }
        
        Button(action: {
            print("Go to login")
        }, label: {
            Text("Already have an account? Login").foregroundColor(.black
            ).bold()
        })
        .padding()
 
    }
    }
    }


struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
