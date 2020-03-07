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
     

}
