//
//  UserManager.swift
//  HandyMan
//
//  Created by Don Johnson on 12/8/15.
//  Copyright © 2015 Don Johnson. All rights reserved.
//

class UserManager {
    
    var user: User
    
    // Singleton
    static let sharedInstance: UserManager = UserManager()
    private init(){
        self.user = User()
    }
    
    func user(user: User) {
        self.user = user
    }
    
    func fullNameFormatted() -> String {
        return self.user.firstName + " " + self.user.lastName
    }
    
    func logout() -> Void {
        self.user = User()
    }
    
}
