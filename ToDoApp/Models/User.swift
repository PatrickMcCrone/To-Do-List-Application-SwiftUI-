//
//  User.swift
//  ToDoApp
//
//  Created by Patrick McCrone on 8/5/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
