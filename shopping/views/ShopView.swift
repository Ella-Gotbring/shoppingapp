//
//  ShopView.swift
//  shopping
//
//  Created by Ella Götbring on 2022-11-07.
//

import SwiftUI
struct ShopView: View {
    @EnvironmentObject var dbConnection: DatabaseConnection

    var body: some View {
        VStack{
            Text("shop view")
                .padding()
            Button("Sign Out") {
                dbConnection.SignOUt()
                           }
           // TabBar()
            
        }
     
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
