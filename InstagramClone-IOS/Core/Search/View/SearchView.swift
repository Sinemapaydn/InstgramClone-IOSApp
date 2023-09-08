//
//  SearchView.swift
//  InstagramClone-IOS
//
//  Created by SinemApaydın on 21.08.2023.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @StateObject var viewModel = SearchViewModel()
    
    var body: some View {
        NavigationStack{
            ScrollView {
                LazyVStack(spacing:15) {
                    ForEach(viewModel.users) { user in
                        NavigationLink(value: user)
                            {
                            HStack {
                                CircularProfileImageView(user: user, size: .xSmall)
                                
                                VStack(alignment: .leading){
                                    Text(user.username)
                                        .fontWeight(.semibold)
                                    if let fullname = user.fullname {
                                        Text(fullname)
                                    }
                                }
                                .font(.footnote)
                                
                                Spacer()
                            }
                            .foregroundColor(.black)
                            .padding(.horizontal)
                            
                        }
                        
                    }
                    
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search")
            }
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
            })
 
        }
        
    }
    
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
