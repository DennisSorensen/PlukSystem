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
    
    @State private var userName : String = ""
    @State private var userPassword : String = ""
    
    var body: some View {
        
        VStack{
            HStack {
                Text("Log ind").font(.title)
                Spacer()
            }.padding()
            
           
              
           
            HStack {
                VStack {
                    TextField("Brugernavn", text: $userName).textFieldStyle(RoundedBorderTextFieldStyle()).padding().padding(.top, 40)
                        
                        SecureField("Kodeord", text: $userPassword).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                        
                        Button(action: {
                            self.userSession.logIn()
                        }) {
                            Text("Log ind").font(.title).foregroundColor(.white)
                        }.padding([.leading, .trailing], 100).padding([.top, .bottom], 10).background(Color.brandAction).cornerRadius(5).shadow(radius: 4).padding(.bottom, 50)
                    }.background(Color.brandLightGray).cornerRadius(25)
            }.padding([.leading, .trailing])
        
              
          
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static let userSession = UserSession()
    
    static var previews: some View {
        LoginView().environmentObject(userSession)
    }
}
