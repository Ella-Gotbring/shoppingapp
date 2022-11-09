//
//  ProductRow.swift
//  shopping
//
//  Created by Ella Götbring on 2022-11-07.
//

import SwiftUI


struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
     var product: Product
    
    var body: some View {
        HStack(spacing: 20){
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            VStack (alignment: .leading, spacing: 10){
                Text(product.name)
                    .bold()
                Text("\(product.price)" )
                
            }
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "minus")
                    .foregroundColor(.black)
                    .font(.system(size: 16))
            }
            Text("\(product.quantity)")
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .padding(.vertical, 5)
                .padding(.horizontal, 10)
            
            Button(action: {}) {
                Image(systemName: "plus")
                    .foregroundColor(.black)
                    .font(.system(size: 16))
            }
            
         
            
            
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[1])
            .environmentObject(CartManager())
    }
}

