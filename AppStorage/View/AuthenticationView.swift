//
//  AuthenticationView.swift
//  AppStorage
//
//  Created by Inpyo Hong on 2021/08/24.
//

import SwiftUI

struct AuthenticationView: View {
    @EnvironmentObject var userData: UserData
//    @AppStorage("isLoggedIn") var isLoggedIn : Bool = UserDefaults.standard.bool(forKey: "isLoggedIn")
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            Button(action: {
                userData.isLoggedIn = true
            }) {
                Text("로그인")
            }
        }
        
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView()
    }
}
