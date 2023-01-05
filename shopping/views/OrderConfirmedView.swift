//
//  MapView.swift
//  shopping
//
//  Created by Ella Götbring on 2022-11-07.
//

import SwiftUI

struct OrderConfirmedView: View {
    
        @ObservedObject var model = ViewModel()
        
        @State var name = ""
        @State var notes = ""
        
        var body: some View {
            
            
            
            VStack {
                
                Text("christmas wishlist")
                
                List (model.list) { item in
                    
                    HStack {
                        Text(item.name)
                        Spacer()
                        
                        // Update button
                        Button(action: {
                            
                            // Delete 
                            model.updateData(todoToUpdate: item)
                        }, label: {
                            Image(systemName: "pencil")
                        })
                        .buttonStyle(BorderlessButtonStyle())
                        
                        
                        // Delete button
                        Button(action: {
                            
                            // Delete
                            model.deleteData(todoToDelete: item)
                        }, label: {
                            Image(systemName: "minus")
                        })
                        .buttonStyle(BorderlessButtonStyle())
                        
                    }
                }
                
             
                
                VStack(spacing: 8) {
                    
                    TextField("Name", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("Price", text: $notes)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button(action: {
                        
                        // Call add data
                        model.addData(name: name, notes: notes)
                        
                        // Clear the text fields
                        name = ""
                        notes = ""
                        
                    }, label: {
                        Text("Add Wishlist Item")
                            .foregroundColor(.black)
                    })
                    
                }
                .padding()
                
            }
            
            
        }
        
        init() {
            model.getData()
        }
    }
struct OrderConfirmedView_Previews: PreviewProvider {
    static var previews: some View {
        OrderConfirmedView()
    }
}

