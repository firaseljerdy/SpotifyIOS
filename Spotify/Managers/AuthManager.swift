//
//  AuthManager.swift
//  Spotify
//
//  Created by Firas El Jerdy on 24/07/2021.
//

import Foundation

final class AuthManager{
    static let shared = AuthManager() //singleton
    
    struct Constants {
        static let clientID = "723988cb096d496ca5dc1d08cbc95e26"
        static let clinetSecret = "14b4b710bfa84d6bb77dd1365429ccd6"
    }
    
    public var signInURL: URL? {
        let base = "https://accounts.spotify.com/authorize"
        let scopes = "user-read-private"
        let redirectURI = "https://www.iosacademy.io"
        
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        
        return URL(string: string)
    }
    
    
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
