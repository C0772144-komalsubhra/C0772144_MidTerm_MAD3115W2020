//
//  CustomersListViewController.swift
//  C0772144_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class CustomersListViewController: UIViewController {
      var customers:[Customer] = []
        @IBOutlet weak var lblHello: UILabel!
        
        @IBOutlet weak var tblView: UITableView!
        let userDefault = UserDefaults.standard
        override func viewDidLoad() {
             self.navigationItem.hidesBackButton = true
            
            
            if let navigationBar = self.navigationController?.navigationBar {
                let firstFrame = CGRect(x: 95, y: 0, width: navigationBar.frame.width/2, height: navigationBar.frame.height)
                
                if let username = userDefault.string(forKey: "username"){
                let firstLabel = UILabel(frame: firstFrame)
                    firstLabel.text = "Hello \(username)"
                    navigationBar.addSubview(firstLabel)
                    }}
            
            
            super.viewDidLoad()
            SingletonClass.getInstance().loadData()
            customers = SingletonClass.getInstance().getAllCustomers()
            
            tblView.delegate = self
            tblView.dataSource = self
          
            
            

            // Do any additional setup after loading the view.
        }
        
        @IBAction func btnNewCustomer(_ sender: UIBarButtonItem) {
        }
        
        
        @IBAction func btnLogout(_ sender: UIBarButtonItem) {
            self.navigationController!.popToRootViewController(animated: true)
        }
        }

    extension CustomersListViewController : UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int{
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customers.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customerCell")

        let customer = customers[indexPath.row]

        cell?.textLabel?.text = customer.fullName
        cell?.detailTextLabel?.text = "Age: \(String(describing: customer.age))"
        return cell!
    }
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 90.5
        }

}
