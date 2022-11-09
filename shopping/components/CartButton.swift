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
            HStack(spacing: 10){
                
               
                Image(systemName: "cart")
                
                
                    .padding(.top, 5)
                    .padding()
                if numberofProducts > 0{
                    Text("\(numberofProducts)")
                        .font(.caption2.bold())
                        .foregroundColor(.white)
                        .frame(width: 13, height: 13)
                        .background(.red)
                        .cornerRadius(50)
                }
                
                    
              
            }
            HStack(spacing: 20){
                Button {
                    print("Sign out button was tapped")
                    dbConnection.SignOUt()
                } label: {
                  Text("logout")
                    Label("Edit", systemImage: "rectangle.portrait.and.arrow.right")
                }
                .padding(5)
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
