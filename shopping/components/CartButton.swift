//
//  CartButton.swift
//  shopping
//
//  Created by Ella Götbring on 2022-11-07.
//

import SwiftUI


struct CartButton: View {
    @EnvironmentObject var dbConnection: DatabaseConnection
    
    var numberofProducts: Int
    var body: some View {
        HStack{
            HStack(){
            
            
            
                Button {
                    print("Sign out button was tapped")
                    dbConnection.SignOUt()
                } label: {
                    Label("Logout", systemImage: "rectangle.portrait.and.arrow.right")
                }
                .padding()
                .foregroundColor(.black)
                
                NavigationLink(destination: OrderConfirmedView(), label: {
                    Text("wishlist")
                        .foregroundColor(.black)
                })
                Image(systemName: "pencil").imageScale(.large)
                    .foregroundColor(.black)
                    .padding(.top, 5)
                
          
            }
            
            

            ZStack(alignment: .topTrailing){
                
               
                Image(systemName: "cart.fill").imageScale(.large)
                    .foregroundColor(.black)
                    .padding(.top, 5)
                
                if numberofProducts > 0 {
                   
                        
                 Text("\(numberofProducts)")
                        .font(.caption2.bold())
                        .foregroundColor(.white)
                        .frame(width: 18, height: 18)
                        .background(.red)
                        .cornerRadius(50)
                }
            
                
               
            
        }
            
        }
  
}
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberofProducts: 1)
    }
}

//HStack{
 //   Button {
 //       print("Edit button was tapped")
 //       dbConnection.SignOUt()
 //   } label: {
      
  //      Label("Edit", systemImage: "pencil")
  //  }
 //   .padding(5)
//}
