//
//  UserSession.swift
//  PlukSystem
//
//  Created by Dennis Sørensen on 06/04/2020.
//  Copyright © 2020 Dennis Sørensen. All rights reserved.
//

import SwiftUI

class UserSession: ObservableObject {
 
    @Published var isUserLoggedIn : Bool = false
    
    
    //Very simple login feature. To be improved
    func logIn(_ user : UserAuth) {
        
        //Kræver brugernavn og password
        if !user.userName.isEmpty && !user.password.isEmpty {
            isUserLoggedIn = true
        }
        
    }
}
