//
//  DatabaseConnection.swift
//  shopping
//
//  Created by Ella Götbring on 2022-11-07.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

class DatabaseConnection: ObservableObject{
   private var db = Firestore.firestore()
    
    //lyssna på förändringarna live och använda oss av de
    @Published var currentUser: User?
    @Published var userLoggedIn = false
    
    
    //har det skett en förändring i min inlogg status? init funktionen körs
    //init körs när databaseconnection skapas
    
    init(){
        Auth.auth().addStateDidChangeListener{ [self]
            auth, user in
            
        
            if let user = user {
                // Vi är inloggade
                
                self.userLoggedIn = true
                self.currentUser = user
               

            } else {
                // Vi är utloggade
                self.userLoggedIn = false
                self.currentUser = nil
               
            }
            
        }
        }
    
            
    func SignOUt() {
        do {
        try Auth.auth().signOut()
        } catch {
            print("error signing out")
        }
       
    }
    
    
    func LoginUser(email: String, password: String){
        Auth.auth().signIn(withEmail: email, password: password) {
            authDataResult, error in
            
            if let error = error {
                print("Error logging in: \(error.localizedDescription)")
                return
            }
            
           
            
        }
        
    }
    
    func RegisterUser(email: String, password: String){
        Auth.auth().createUser(withEmail: email, password: password) {
            
            authDataResult, error in
            
            if let error = error {
                print("Error register user: \(error.localizedDescription)")
                return
            }
            
            
        
    }
    
    
    
}
}
