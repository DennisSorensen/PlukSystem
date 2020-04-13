//
//  ChoosePickListView.swift
//  PlukSystem
//
//  Created by Dennis Sørensen on 13/04/2020.
//  Copyright © 2020 Dennis Sørensen. All rights reserved.
//

import SwiftUI

struct ChoosePickListView: View {
    
    @EnvironmentObject var userSession : UserSession
    
    var body: some View {
        VStack {
            if !userSession.isUserLoggedIn { //Hvis man ikke er logget ind
                NotLoggedInView()
            }
            else { //Hvis mer er logget ind
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            
            EmptyView() //Viser ingen ting
        }
    }
}

struct ChoosePickListView_Previews: PreviewProvider {
    
    static let userSession = UserSession()
    
    static var previews: some View {
        ChoosePickListView().environmentObject(userSession)
    }
}
