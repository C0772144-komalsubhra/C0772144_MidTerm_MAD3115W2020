//
//  StringExtension.swift
//  C0772144_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

extension String{
 func getAllCustomers() -> [Customer]{
       return Array(customerList.values)
   }

}
