//
//  ShopView.swift
//  shopping
//
//  Created by Ella Götbring on 2022-11-07.
//

import SwiftUI
struct ShopView: View {
  
 
    @StateObject var cartManager = CartManager()
    @EnvironmentObject var dbConnection: DatabaseConnection
   
  
    
    var columns = [GridItem(.adaptive(minimum: 150), spacing :25)]

    var body: some View {
       

        ZStack{
            Color(UIColor.secondarySystemBackground)
                .ignoresSafeArea()
            
            
        ScrollView(.vertical){
        LazyVGrid(columns: columns, spacing: 20){
        ForEach(productList, id: \.id) { product in
            ProductCard(product: product)
                .environmentObject(cartManager)
        }
            
        }
                
            }
            
        .padding()
     
        .navigationTitle(Text("Christmas shop"))
       
        .toolbar {
          
            NavigationLink {
             
                CartView()
                    .environmentObject(cartManager)
                
            } label: {
                CartButton(numberofProducts: cartManager.products.count)
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
}
}
}




struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
