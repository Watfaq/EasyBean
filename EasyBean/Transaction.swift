//
//  Transaction.swift
//  EasyBean
//
//  Created by Yuwei Ba on 6/21/17.
//  Copyright © 2017 Watfaq. All rights reserved.
//

import UIKit

class Transaction {
    var accountId: Int
    var money: Int
    var desc: String?
    
    var created: Date?
    
    var description: String {
        return "Transaction: \(accountId)"
    }
    
    init(accountId: Int, money: Int, description: String?, created: Date?) {
        self.accountId = accountId
        self.money = money
        if let desc = description {
            self.desc = desc
        }
        if created == nil {
            self.created = Date()
        } else {
            self.created = created
        }
    }
}

