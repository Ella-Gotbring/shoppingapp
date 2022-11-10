//
//  ProfileView.swift
//  shopping
//
//  Created by Ella Götbring on 2022-11-07.
//

import SwiftUI

struct PayView: View {
    @State var username = ""
    @State var number = ""
    @State var ccv = ""
    @State var date = Date()
    @State var street = ""
    @State var post = ""
    @State var zip = ""
 
    
    var body: some View {
       
        VStack{
            VStack(alignment: .leading) {
                Text("enter payment info")
                    .font(.headline.bold())
                padding(10)
            
            Text("Name")
                .font(.callout)
                .bold()
              
            TextField("Enter name...", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Text("Number")
                .font(.callout)
                .bold()
                .padding()
            TextField("Enter cardnumber...", text: $number)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                HStack{
                    Text("CCV")
                        .font(.callout)
                        .bold()
                        .padding()
                    TextField("CCV", text: $ccv)
                        .fixedSize()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    DatePicker(
                         "Date",
                         selection: $date,
                         displayedComponents: [.date]
                            
                     )
                }
            Spacer()
                Divider()
                VStack{
                    
               
                Text("shipping adress")
                    .font(.headline.bold())
                
                Text("Street name")
                    .font(.callout)
                    .bold()
                  
                TextField("Enter streetname...", text: $street)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Text("Postcode")
                    .font(.callout)
                    .bold()
                  
                TextField("Enter name...", text: $post)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Text("Zip")
                    .font(.callout)
                    .bold()
                  
                TextField("Enter name...", text: $zip)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
           
                }
             
        }.padding()
                .padding()
            NavigationLink(destination: OrderConfirmedView(), label: {
                Text("Place order")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: UIScreen.main.bounds.width * 0.8)
                    .background(Color(hue: 0.552, saturation: 0.649, brightness: 0.778, opacity: 0.722))
                    .cornerRadius(15.0)
            })
            
    }
}
}

struct PayView_Previews: PreviewProvider {
    static var previews: some View {
        PayView()
    }
}
