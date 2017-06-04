//
//  TodoItem.swift
//  TodoApp
//
//  Created by Anthony Merle on 04/06/2017.
//  Copyright © 2017 Anthony Merle. All rights reserved.
//

import UIKit

class TodoItem: Any {
    
    var title: String
    var dueDate: Date
    
    required init(title: String, dueDate: Date) {
        self.title = title
        self.dueDate = dueDate
    }
}
