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
                    Divider()
                    Text("Your cart total is")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                }
                .padding()
                
               // Button("pay now"){
                    
                //    print("pay now button pressed")
               // }
            
                
                
                Button(action: {
                    print("pay now pressed")
                }, label: {
                    NavigationLink(destination: PaymentView()) {
                         Text("Pay now")
                     }
                })
            } else{
                Text("No items in cart")
               
            }
            
        }
        .navigationTitle(Text("Shopping cart"))
        .navigationViewStyle(StackNavigationViewStyle())
    }
       
        
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
