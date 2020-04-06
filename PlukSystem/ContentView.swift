//
//  ContentView.swift
//  PlukSystem
//
//  Created by Dennis Sørensen on 06/04/2020.
//  Copyright © 2020 Dennis Sørensen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var userSession : UserSession
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static let enviromentSession = UserSession()
    
    static var previews: some View {
        ContentView().environmentObject(enviromentSession)
    }
}
