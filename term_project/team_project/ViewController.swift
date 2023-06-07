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
    // 로그인 화면

    @IBOutlet weak var ID: UILabel!
    @IBOutlet weak var inputID: UITextField!
    @IBOutlet weak var inputName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func logIn(id : String, name : String)-> Bool {
        var userModel = UserModel()
        
        for user in userModel.users {
            if user.ID == id && user.Name == name{
                return true
            }
        }

        return false
        func shakeTextField(textField: UITextField) -> Void{
            UIView.animate(withDuration: 0.2, animations: {
                textField.frame.origin.x -= 10
            }, completion: { _ in
                UIView.animate(withDuration: 0.2, animations: {
                    textField.frame.origin.x += 20
                 }, completion: { _ in
                     UIView.animate(withDuration: 0.2, animations: {
                        textField.frame.origin.x -= 10
                    })
                })
            })
        }

    }
    
    @IBAction func send_btn(_ sender: UIButton) {
        if logIn(id : inputID.text!, name : inputName.text!){
            guard let nextVC = self.storyboard?.instantiateViewController(identifier: "SecondViewController") else {return}
             self.present(nextVC, animated: true)

        }
    }
    
    
    // 메인화면
    @IBOutlet weak var connectedUser: UILabel!

    
    
    @IBOutlet weak var Notice: UILabel!
    @IBAction func verificationCode(_ sender: Any) {
    }
    @IBAction func pointList(_ sender: Any) {
    }
    @IBAction func AIsafetyCheck(_ sender: Any) {
    }
    @IBAction func speedMEasurement(_ sender: Any) {
    }
    
    // 인증번호화면
    
    @IBOutlet weak var verifyingCode: UILabel!
    
    //point내역화면
    
    @IBAction func ToreaderBoard(_ sender: Any) {
    }
    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var pointlist: UIStackView!
    
    //리더보드
    
    @IBOutlet weak var readerBoard: UILabel!
    @IBOutlet weak var ranking: UIStackView!
    
    //속도측정화면
    @IBOutlet weak var labelSpeed: UILabel!
    @IBOutlet weak var SpeeeeeD: UILabel!
    
    //장비인식화면
    @IBOutlet weak var pictureFrame: UIImageView!
    
    
    
}

