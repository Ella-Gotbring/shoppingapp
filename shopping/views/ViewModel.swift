//
//  ViewModel.swift
//  shopping
//
//  Created by Ella Götbring on 2023-01-04.
//
import Foundation
import Firebase

class ViewModel: ObservableObject {
    
    @Published var list = [Todo]()
    
    func updateData(todoToUpdate: Todo) {
        
        // reference to the database
        let db = Firestore.firestore()
        
        // Set the data to update
        db.collection("todos").document(todoToUpdate.id).setData(["name":"Updated: \(todoToUpdate.name)"], merge: true) { error in
            
            // Check errors
            if error == nil {
                // Get the new data
                self.getData()
            }
        }
    }
    
    func deleteData(todoToDelete: Todo) {
        

        let db = Firestore.firestore()
        
        // Specify document to delete
        db.collection("todos").document(todoToDelete.id).delete { error in
            
            // Check errors
            if error == nil {
                // No errors
                
                // Update the UI from the main thread
                DispatchQueue.main.async {
                    
                    // Remove the todo that was just deleted
                    self.list.removeAll { todo in
                        
                        // Check for the todo to remove
                        return todo.id == todoToDelete.id
                    }
                }
                
                
            }
        }
        
    }
    
    func addData(name: String, notes: String) {
        
    
        let db = Firestore.firestore()
        
        // add a document to a collection
        db.collection("todos").addDocument(data: ["name":name, "notes":notes]) { error in
            
            // Check for errors
            if error == nil {
               
                
                //  get data to retrieve latest data
                self.getData()
            }
            else {
          
                print("error")
            }
        }
    }
    
    func getData() {
        
    
        let db = Firestore.firestore()
        
        // Read the documents at a specific path
        db.collection("todos").getDocuments { snapshot, error in
            
            // Check for errors
            if error == nil {
                
                if let snapshot = snapshot {
                    
                    // Update the list property in the main thread
                    DispatchQueue.main.async {
                        
                        // Get all the documents and create Todos
                        self.list = snapshot.documents.map { d in
                            
                            // Create a Todo item for each document returned
                            return Todo(id: d.documentID,
                                        name: d["name"] as? String ?? "",
                                        notes: d["notes"] as? String ?? "")
                        }
                    }
                    
                    
                }
            }
            else {
              
                print("error")
            }
        }
    }
    
}
