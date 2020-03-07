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
  
}
