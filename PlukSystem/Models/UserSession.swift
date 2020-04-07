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
    
    
    //Meget simpel login funktion
    func logIn() {
        isUserLoggedIn = true
    }
}
