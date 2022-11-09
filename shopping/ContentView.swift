//
//  ContentView.swift
//  shopping
//
//  Created by Ella Götbring on 2022-11-07.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var  dbConnection:DatabaseConnection
    
    var body: some View {
        
        
        if dbConnection.userLoggedIn {
            NavigationView {
                ShopView()
                
            }
          
            .navigationViewStyle(StackNavigationViewStyle())
            } else {
                NavigationView{
                    LoginView()
                }
                
                .navigationViewStyle(StackNavigationViewStyle())
            }
        }
        
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(DatabaseConnection())
            .previewDevice("iPhone 11")
        ContentView().environmentObject(DatabaseConnection())
            .previewDevice("iPhone 13")
    }
}
