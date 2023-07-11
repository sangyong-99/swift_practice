//
//  AuthenticationViewModel.swift
//  SwiftuiFirebaseBootcamp
//
//  Created by 신상용 on 2023/07/11.
//

import Foundation

@MainActor
final class AuthenticationViewModel: ObservableObject {
   
    
    func signInApple() async throws {
        let helper = SignInAppleHelper()
        let tokens = try await helper.startSignInWithAppleFlow()
        let authDataResult = try await AuthenticationManager.shared.signInWithApple(tokens: tokens)
        let user = DBUser(auth: authDataResult)
        try await UserManager.shared.createNewUser(user: user)
    }
    

}
