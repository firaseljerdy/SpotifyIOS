//
//  AuthManager.swift
//  Spotify
//
//  Created by Firas El Jerdy on 24/07/2021.
//

import Foundation

final class AuthManager{
    static let shared = AuthManager() //singleton
    
    private init() {}
    
    var isSignedIn: Bool {
        return false
    }
    
    private var acessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExperationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
    
}
