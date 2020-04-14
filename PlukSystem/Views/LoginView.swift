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
    
    private var notReadyForLogin : Bool {
        return self.userName.isEmpty || self.userPassword.isEmpty
    }
    
    private var buttonColor : Color {
        if self.notReadyForLogin {
            return Color.brandLightGray
        }
        return Color.brandAction
    }
    
    var body: some View {
        
        VStack{
            HStack {
                Text("Log ind").font(.title)
                Spacer()
            }.padding()
            
           
              
           
            HStack {
                VStack {
                    
                    //Når man trykker på enter så logger den ind
                    TextField("Brugernavn", text: $userName) {
                        self.userSession.logIn(UserAuth(userName: self.userName, password: self.userPassword))
                    }
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .padding(.top, 40)
                    
                    //                    TextField("Brugernavn", text: $userName)
                    //                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    //                        .padding()
                    //                        .padding(.top, 40)
                    
                    SecureField("Kodeord", text: $userPassword){
                        self.userSession.logIn(UserAuth(userName: self.userName, password: self.userPassword))
                    }
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    
                    Button(action: {
                        self.userSession.logIn(UserAuth(userName: self.userName, password: self.userPassword))
                    }) {
                        Text("Log ind")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    .disabled(self.notReadyForLogin)
                    .padding([.leading, .trailing], 100)
                    .padding([.top, .bottom], 10)
                    .background(buttonColor)
                    .cornerRadius(5).shadow(radius: 4)
                    .padding(.bottom, 50)
                }
                .background(Color.brandLightGray)
                .cornerRadius(25)
            }
            .padding([.leading, .trailing])
            
            
          
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static let userSession = UserSession()
    
    static var previews: some View {
        LoginView().environmentObject(userSession)
    }
}
