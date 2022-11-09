//
//  CartView.swift
//  shopping
//
//  Created by Ella Götbring on 2022-11-07.
//

import SwiftUI


struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) { product in
                    ProductRow(product: product)
                }
                
                HStack {
                    Text("Your cart total is")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                }
                .padding()
                
               // Button("pay now"){
                    
                //    print("pay now button pressed")
               // }
            
                
                NavigationLink(destination: ProfileView(), label: {
                    Text("Pay nowww")
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 220, height: 60)
                        .background(Color.green)
                        .cornerRadius(15.0)
                })
            

                
             
            } else{
                Text("Your cart is empty")
               

            }
            
           
        }
        .navigationTitle(Text("My shopping cart"))
        .navigationViewStyle(StackNavigationViewStyle())
    }
       
        
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
