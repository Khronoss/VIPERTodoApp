//
//  TodoItem.swift
//  TodoApp
//
//  Created by Anthony Merle on 04/06/2017.
//  Copyright © 2017 Anthony Merle. All rights reserved.
//

import UIKit

class TodoItem: NSObject {
    
    var title: String!
    var dueDate: Date!
    
    convenience init(title: String, dueDate: Date) {
        self.init()
        
        self.title = title
        self.dueDate = dueDate
    }
}
