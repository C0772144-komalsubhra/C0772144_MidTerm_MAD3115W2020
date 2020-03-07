//
//  ViewController.swift
//  C0772144_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var switch_rememberMe: UISwitch!
       @IBOutlet weak var txtPassord: UITextField!
    var flag=false
       @IBOutlet weak var lbl: UILabel!
       let userDefault = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func signUpBtn(_ sender: UIButton) {
           
       }
    @IBAction func loginBtn(_ sender: UIButton) {
        guard let username = txtUsername.text else{
                      showAlertBox(msg: "enter username")
            return
                  }
                  if username.isEmpty{
                      showAlertBox(msg: "enter username")}
        guard let password = txtPassord.text else{
                      showAlertBox(msg: "enter password")
               return
               }
        if password.isEmpty{
                  showAlertBox(msg: "Please enter password")}
              readPlist(users:username,pwd:password)
                if flag==true
                {
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
