//
//  ViewController.swift
//  team_project
//
//  Created by snlcom on 2023/06/04.
//

import UIKit

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
    
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var IDlabel: UILabel!
    @IBAction func IDTextfield(_ sender: Any) {
    }
    @IBOutlet weak var Namelabel: UILabel!
    @IBAction func NameTextfield(_ sender: Any) {
    }
    
    @IBAction func LogINButton(_ sender: Any) {
    }
    
    
    
}

