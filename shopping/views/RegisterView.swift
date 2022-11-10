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
        .font(.headline)
                   .foregroundColor(.white)
                   .padding()
                   .frame(width: UIScreen.main.bounds.width * 0.8)
                   .background(Color(hue: 0.418, saturation: 0.829, brightness: 0.311))
                   .cornerRadius(15.0)
        
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
        //RegisterView()
         RegisterView() .previewDevice("iPhone 8")
         RegisterView() .previewDevice("iPhone 12 mini")
         RegisterView() .previewDevice("iPod touch (7th generation)")

    }
}
