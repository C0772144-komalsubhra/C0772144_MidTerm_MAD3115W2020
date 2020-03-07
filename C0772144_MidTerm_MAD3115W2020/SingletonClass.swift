//
//  SingletonClass.swift
//  C0772144_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class SingletonClass{

     private static let instance = SingletonClass()
      private lazy var customerList: [String: Customer] = [:]

     
     

        private init(){}

        static func getInstance() -> SingletonClass
        {
            return instance
        }
  
     func addCustomer(customer: Customer)
     {
         self.customerList.updateValue(customer, forKey: customer.customerId)
     }
  func getAllCustomers() -> [Customer]{
        return Array(customerList.values)
    }
 
    func loadData()
    {
        
        customerList.updateValue(Customer(customerId: "KS", firstName: "Komal", lastName: "Subhra", emailAddress: "komal@gmail.com",Dob:"20/09/1993",gender: .FEMALE), forKey: "KS")
         customerList.updateValue(Customer(customerId: "GG", firstName: "Geet", lastName: "Gupta", emailAddress: "geet@mail.com",Dob:"05/05/1996",gender: .FEMALE), forKey: "GG")
   
        
        
    }
}
