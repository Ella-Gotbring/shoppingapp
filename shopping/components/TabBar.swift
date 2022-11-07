//
//  TabBar.swift
//  shopping
//
//  Created by Ella Götbring on 2022-11-07.
//

import SwiftUI


struct TabBar: View {
    var body: some View {
 
  
        TabView{
            CartView()
                .tabItem{
                    Image(systemName: "house")
                    Text("home")
                }
            MapView()
                .tabItem{
                    Image(systemName: "house")
                    Text("find us")
                }
            
            ProfileView()
                .tabItem{
                    Image(systemName: "house")
                    Text("profile")
                }
            
            
        }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
}
