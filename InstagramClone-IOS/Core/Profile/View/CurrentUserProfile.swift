//
//  CurrentUserProfile.swift
//  InstagramClone-IOS
//
//  Created by SinemApaydın on 22.08.2023.
//

import SwiftUI

struct CurrentUserProfile: View {
    
    let user: User

    
    var body: some View {
        NavigationStack {
            ScrollView {
                //header
                ProfileHeaderView(user: user)
                
                //post grid view
                PostGridView(user: user)
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                            Image(systemName: "lock")
                        Text(user.username)
                            .font(.headline)
                            .fontWeight(.bold)
                           }
                    
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button{
                        AuthService.shared.signOut()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct CurrentUserProfile_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfile(user: User.MOCK_USERS[0])
    }
}
