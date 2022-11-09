//
//  ProfileView.swift
//  shopping
//
//  Created by Ella Götbring on 2022-11-07.
//

import SwiftUI

struct ProfileView: View {
    @State var username = ""
    @State var number = ""
    @State var ccv = ""
    @State var date = Date()
    
    var body: some View {
       
        VStack{
            Text("enter payment info")
                .font(.headline.bold())
   
            VStack(alignment: .leading) {
            
            Text("Name")
                .font(.callout)
                .bold()
                .padding()
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
             
        }.padding()
                .padding()
            NavigationLink(destination: MapView(), label: {
                Text("Place order")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 220, height: 60)
                    .background(Color.green)
                    .cornerRadius(15.0)
            })
            
    }
}
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
