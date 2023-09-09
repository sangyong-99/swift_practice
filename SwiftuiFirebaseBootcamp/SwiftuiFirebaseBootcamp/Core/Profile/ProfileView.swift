//
//  ProfileView.swift
//  SwiftuiFirebaseBootcamp
//
//  Created by 신상용 on 2023/07/18.
//

import SwiftUI

@MainActor
final class ProfileViewModel: ObservableObject {
    
    @Published private(set) var user: DBUser? = nil
    
    
    func loadCurrentUser() async throws {
        let authDataResult = try AuthenticationManager.shared.getAuthenticatedUser()
        self.user = try await UserManager.shared.getUser(userId: authDataResult.uid)
        
        
    }
    
    
}


struct ProfileView: View {
    // MARK: - PROPERTY
    @StateObject private var viewModel = ProfileViewModel()
    @Binding var showSignInView: Bool
    
    // MARK: - BODY
    var body: some View {
        
        
        List {
            if let user = viewModel.user {
                Text("UserId: \(user.userId)")
                
                if let isAnonymous = user.isAnonymous {
                    Text("isAnonymous: \(isAnonymous.description.capitalized)")
                }
            }
        }
        .task {
            try? await viewModel.loadCurrentUser()
        }
        .navigationTitle("Profile")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink{
                    SettingsView(showSignInView: $showSignInView)
                } label: {
                    Image(systemName: "gear")
                        .font(.headline)
                }
            }
        }
    }
}  


// MARK: - PREVIEW
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ProfileView(showSignInView: .constant(false))
        }
    }
}
