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
   
  
    
    var columns = [GridItem(.adaptive(minimum: 160), spacing :25)]

    var body: some View {
       

        ZStack{
            Color(UIColor.secondarySystemBackground)
                .ignoresSafeArea()
            
            
        
           SearchView()
            
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

struct SearchView: View{
    @State private var search: String = ""
    var body: some View {
        
        ZStack{
            Color(UIColor.secondarySystemBackground)
                .ignoresSafeArea()
            VStack{
                
                HStack{
                    HStack{
                        Image(systemName: "magnifyingglass")
                           
                        TextField("search for something..", text: $search)
                       
                            .padding()
                            .cornerRadius(10)
                            .background(.white)
                            .padding()
                            
                        
                                    
                       

                    }
                    .padding(.all, 20)
                    .cornerRadius(10)
                    
                    
                    .padding(.trailing)
                    
                    Button(action: {}){
                        Image(systemName: "qrcode.viewfinder")
                            .padding()
                            .cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1.0)))
                            .padding()
                    }
                        
                    }
                  
                .padding(.horizontal)
            }
        }
        
    }
}


struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
