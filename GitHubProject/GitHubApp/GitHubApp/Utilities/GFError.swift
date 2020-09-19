//
//  ErrorMessage.swift
//  GitHubApp
//
//  Created by Thomas Verdier on 7/10/20.
//  Copyright © 2020 Thomas Verdier. All rights reserved.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid Request. Please try again"
    case unableToComplete = "Unable to complete your request. Please check your Internet Connection"
    case invalidResponse = "Invalid response from the server. Please Try Again."
    case invalidData = "The data receiced from the server was invalid. Please try again"
    case unableToFavorite = "There was an error favoriting this user. Please try again"
    case alreadyInFavorites = "You have already favorited this User"
}
