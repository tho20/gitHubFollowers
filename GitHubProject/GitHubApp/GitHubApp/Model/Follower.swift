//
//  Follower.swift
//  GitHubApp
//
//  Created by Thomas Verdier on 7/10/20.
//  Copyright © 2020 Thomas Verdier. All rights reserved.
//

import Foundation

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String
}
