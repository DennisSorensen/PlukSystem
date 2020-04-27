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
    
    let pickLists = PickList.demoData
    
    var body: some View {
        VStack {
            if !userSession.isUserLoggedIn { //Hvis man ikke er logget ind
                NotLoggedInView()
            }
            else { //Hvis der er logget ind
//                List(1..<4) {tal in
//                    Text("\(tal)")
//                }
                List(pickLists) { pickList in
                    ChoosePickListViewCell(pickList: pickList)
                }
            }
            
            EmptyView() //Viser ingen ting
        }
    }
}

struct ChoosePickListView_Previews: PreviewProvider {
    
    static let userSession = UserSession()
    
    static var previews: some View {
        
        userSession.isUserLoggedIn = true
        
        return ChoosePickListView().environmentObject(userSession)
    }
}
