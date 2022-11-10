//
//  MapView.swift
//  shopping
//
//  Created by Ella Götbring on 2022-11-07.
//

import SwiftUI

struct OrderConfirmedView: View {
    @State var email = ""
    var body: some View {
        VStack{
            Text("Thank you!").font(.largeTitle).bold()
            
                .padding(10)
            
            Text("A order confirmation has been sent out to your email. Since you're here, sign up to get discounts ")
            
            NavigationLink(destination: LoginView(), label: {
                Text("back to login")
            })

       
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        OrderConfirmedView()
    }
}
}
