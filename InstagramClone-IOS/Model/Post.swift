//
//  Post.swift
//  InstagramClone-IOS
//
//  Created by SinemApaydın on 22.08.2023.
//

import Foundation
import Firebase

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    var user: User?
    
}
extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Cool",
              likes: 123,
              imageUrl: "lisa5",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[0]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Protect you from Joker",
              likes: 104,
              imageUrl: "batman1",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[3]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "With my hubby",
              likes: 58,
              imageUrl: "marge2",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[1]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Escape from me",
              likes: 58,
              imageUrl: "bart3",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[2]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Venom is hungry. Time to eat",
              likes: 58,
              imageUrl: "venom1",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[4]
             )
    ]
}
