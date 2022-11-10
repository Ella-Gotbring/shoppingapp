//
//  PaymentView.swift
//  shopping
//
//  Created by Ella Götbring on 2022-11-09.
//

import SwiftUI

struct PaymentView: View {
@State var name = ""
@State var number = ""
@State var  ccv = ""
@State private var date = Date()
    
    var body: some View {
        
        VStack(spacing: 30) {
            Text("enter payment info").bold()
            Text("Card name")
            TextField("", text: $name).textFieldStyle(.roundedBorder)
                .padding()
            Text("Card number")
            SecureField("", text: $number).textFieldStyle(.roundedBorder)
                .padding()
            HStack(spacing: 30){
                Text("CCV")
                SecureField("", text: $ccv).textFieldStyle(.roundedBorder)
                    .fixedSize()
                    .padding()
                DatePicker(
                      "Exp date",
                      selection: $date,
                      displayedComponents: [.date]
                  )
                .padding()
                
            }
           
            
            
     
                NavigationLink(destination: OrderConfirmedView().navigationBarBackButtonHidden(true), label: {
                    Text("Place order")
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: UIScreen.main.bounds.width * 0.8)
                        .background(Color(hue: 0.552, saturation: 0.649, brightness: 0.778, opacity: 0.722))
                        .cornerRadius(15.0)
                })
                
        }
    
    }

struct PaymentView_Previews: PreviewProvider{
    static var previews: some View {
        PaymentView()
    }
}
}




