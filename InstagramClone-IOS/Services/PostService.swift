//
//  PostService.swift
//  InstagramClone-IOS
//
//  Created by SinemApaydın on 24.08.2023.
//

import Foundation
import Firebase

struct PostService {
    private static let postCollections = Firestore.firestore().collection("posts")
    
    static func fetchFeedPosts() async throws -> [Post] {
        let snapshot = try await postCollections.getDocuments()
        var posts = try snapshot.documents.compactMap({try $0.data(as: Post.self) })
        
        for i in 0 ..< posts.count {
            let post = posts[i]
            let ownerUid = post.ownerUid
            let postUser = try await UserService.fetchUser(withUid: ownerUid)
            posts[i].user = postUser
        }
        return posts
    }
    
    static func fetchUserPosts(uid: String) async throws -> [Post] {
        let snapshot = try await postCollections.whereField("ownerUid", isEqualTo: uid).getDocuments()
        return try snapshot.documents.compactMap({try $0.data(as: Post.self) })
    }
}
