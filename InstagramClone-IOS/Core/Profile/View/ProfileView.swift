//
//  ProfileView.swift
//  InstagramClone-IOS
//
//  Created by SinemApaydın on 18.08.2023.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    var body: some View {
            ScrollView {
                //header
                 ProfileHeaderView(user: user)
                
                //post grid view
                PostGridView(user: user)
            }
       
        }
        
    }


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USERS[1])
    }
}
