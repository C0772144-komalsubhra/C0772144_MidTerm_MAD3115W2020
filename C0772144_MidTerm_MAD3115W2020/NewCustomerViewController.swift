//
//  NewCustomerViewController.swift
//  C0772144_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class NewCustomerViewController: UIViewController {
    @IBOutlet weak var txtFirstName: UITextField!
      @IBOutlet weak var txtLastName: UITextField!
      @IBOutlet weak var lblBithdate: UILabel!
       var strDate:String!
      let userDefault = UserDefaults.standard
      var c:Customer!
      
      
      @IBOutlet weak var datePicker: UIDatePicker!
      @IBOutlet weak var txtEmailId: UITextField!
      override func viewDidLoad() {
          super.viewDidLoad()
          //Singelton.getInstance().addCustomer(customer: <#T##Customer#>)
          // Do any additional setup after loading the view.
      }
      override func viewWillAppear(_ animated: Bool) {
          super.viewWillAppear(animated)
          
      }
      @IBAction func pickerChanged(_ sender: Any) {
          let dateFormatter = DateFormatter()

             //dateFormatter.dateStyle = DateFormatter.Style.long
          dateFormatter.dateFormat = "dd/MM/yyyy"
          
          strDate = dateFormatter.string(from: datePicker.date)
          //print(strDate)
      }
    
    @IBAction func btnSave(_ sender: UIButton) {
            validate()
            let firstName = self.txtFirstName.text!
            let lastName = self.txtLastName.text!
            let email = self.txtEmailId.text!
          let c=Customer(customerId: "fg", firstName: firstName, lastName: lastName,  emailAddress:email,Dob:strDate,gender: .FEMALE)
            SingletonClass.getInstance().addCustomer(customer: c)
        }
      
            
            func validate(){
                guard let username = txtFirstName.text else{
                       showAlertBox(msg: "Please enter firstname")
                return
                }
                if username.isEmpty{
                    showAlertBox(msg: "Please enter firstname")}
                
                guard let lastname = txtLastName.text else{
                       showAlertBox(msg: "Please enter lastname")
                return
                }
                if lastname.isEmpty{
                    showAlertBox(msg: "Please enter lastname")}
                
                guard let email = txtEmailId.text else{
                       showAlertBox(msg: "Please enter emailId")
                return
                }
                if email.isEmpty{
                    showAlertBox(msg: "Please enter emailID")}
                if email.isEmailValid(email:email)==false{
                    showAlertBox(msg: "Please enter valid emailID")
                }
            }
                
                         func showAlertBox(msg : String)  {
                            let alert = UIAlertController(title: "Error", message:
                                msg, preferredStyle: .alert)
                            alert.addAction(UIAlertAction(title: "Dismiss", style: .default))
                            
                            self.present(alert, animated: true)
                        }
    
}
