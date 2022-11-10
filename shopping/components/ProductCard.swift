//
//  ProductCard.swift
//  shopping
//
//  Created by Ella Götbring on 2022-11-07.
//


import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            
        ZStack(alignment: .bottom){
            Image(product.image)
                .resizable()
                .cornerRadius(25)
                .frame(width: 195)
                .scaledToFit()
            
            VStack(alignment: .leading){
                Text(product.name)
                    .bold()
                Text("\(product.price)$" )
                    .font(.caption)
                
            }
            .padding()
            .frame(width: 195, height: 76, alignment: .leading)
            .background(.white)
            .cornerRadius(15)
        }
        .frame(width: 180, height: 250)
        .shadow(radius: 3)
            
            Button{
                print("added product to cart")
                cartManager.addToCart(product: product)
                
            } label: {
                Image(systemName: "cart.badge.plus")
                    .font(.system(size: 15))
                    .padding()
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(30)
                    .padding()
                   
                
            }
    }
}
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
            .environmentObject(CartManager())
    }
}
