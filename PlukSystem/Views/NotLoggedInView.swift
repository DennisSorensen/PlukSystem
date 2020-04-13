//
//  NotLoggedInView.swift
//  PlukSystem
//
//  Created by Dennis Sørensen on 13/04/2020.
//  Copyright © 2020 Dennis Sørensen. All rights reserved.
//

import SwiftUI

struct NotLoggedInView: View {
    
    @EnvironmentObject var userSession : UserSession
    
    @State private var showingLoginSheet = false
    
    var showTheSheet : Bool {
        
        var showDaSheet = false
        
        showDaSheet = !self.userSession.isUserLoggedIn && showingLoginSheet
        return showDaSheet
    }
    
    var body: some View {
        VStack {
            ZStack{
                Circle().frame(width: 104, height: 104)
                Image(systemName: "exclamationmark.triangle.fill")
                    .font(Font.system(size: 64))
                    .foregroundColor(.yellow)
                    .offset(y: -5)
            }
            
            Text("Du er ikke logget ind")
                .font(.title)
            
            Button(action: {
                
                self.showingLoginSheet = true
            }) {
                Text("Log ind")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding([.leading, .trailing], 100)
                    .padding([.top, .bottom], 10)
                    .background(Color.brandAction)
                    .cornerRadius(5)
                    .shadow(radius: 4)
                    .padding(.top, 30)
            }.sheet(isPresented: .constant(self.showTheSheet)) {
                LoginView().environmentObject(self.userSession)
                
                //TODO: Skift til den anden isPressed
            }
            
        }
    }
}

struct NotLoggedInView_Previews: PreviewProvider {
    
    static let userSession = UserSession()
    
    static var previews: some View {
        NotLoggedInView().environmentObject(userSession)
    }
}
