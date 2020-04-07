//
//  LoginView.swift
//  PlukSystem
//
//  Created by Dennis Sørensen on 06/04/2020.
//  Copyright © 2020 Dennis Sørensen. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var userSession : UserSession
    
    var body: some View {
        Toggle(isOn: $userSession.isUserLoggedIn) {
            Text("LoginView Er bruger logget ind")
        }.padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static let userSession = UserSession()
    
    static var previews: some View {
        LoginView().environmentObject(userSession)
    }
}
