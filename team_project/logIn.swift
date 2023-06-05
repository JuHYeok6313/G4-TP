//
//  logIn.swift
//  team_project
//
//  Created by snlcom on 2023/06/04.
//

import Foundation

final class UserModel {
    struct User {
        var ID : String
        var Name : String
    }
    
    var users: [User] = [
        User(ID : "100", Name : "김재석"),
        User(ID : "200", Name : "황덕휘"),
        User(ID : "300", Name : "김주혁"),
        User(ID : "400", Name : "이기욱"),
        User(ID : "500", Name : "문호진")
    ]
    
    func isValidID(id: String) -> Bool {
        return !id.isEmpty && id != nil
    }
    
    func isValidName(name : String) -> Bool {
        return !name.isEmpty && name != nil
    }
}

func logIn(id : String, name : String)-> Bool {
    var userModel = UserModel()
    
    for user in userModel.users {
        if user.ID == id && user.Name == name{
            return true
        }
    }
    return false
}
