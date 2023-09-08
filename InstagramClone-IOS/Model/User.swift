//
//  User.swift
//  InstagramClone-IOS
//
//  Created by SinemApaydın on 21.08.2023.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable {
    var id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else {return false}
        return currentUid == id
    }
}
extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "lisa.simpson",profileImageUrl: nil, fullname: "Lisa Simpson", bio: "Welcome to my world <3", email: "lisa.simpson@gmail.com"),
        .init(id: NSUUID().uuidString, username: "margesimp",profileImageUrl: nil, fullname: "Marge Simpson", bio: "Exploring the world!", email: "margesimpson@gmail.com"),
        .init(id: NSUUID().uuidString, username: "bart",profileImageUrl: nil, fullname: "Bart Simpson", bio: "Gamer", email: "bartsimpson@gmail.com"),
        .init(id: NSUUID().uuidString, username: "batman",profileImageUrl: nil, fullname: "Bruce Wayne", bio: "Gotham's Dark Knight", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "venom",profileImageUrl: nil, fullname: nil, bio: "Venom", email: "venom@gmail.com"),
    ]
}
