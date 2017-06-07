//
//  UserDefaultsStore.swift
//  TodoApp
//
//  Created by Anthony Merle on 04/06/2017.
//  Copyright © 2017 Anthony Merle. All rights reserved.
//

import UIKit

class UserDefaultsStore: NSObject {
    var userDefaults: UserDefaults
    var todoItemPlistConverter: TodoItemPListConverter
    
    let savedTodoItemsKey = "savedTodoItems"
    
    init(userDefaults: UserDefaults, plistConverter: TodoItemPListConverter) {
        self.userDefaults = userDefaults
        self.todoItemPlistConverter = plistConverter
    }
    
    func todoItems() -> [TodoItem] {
        var items: [TodoItem] = []
        
        if let plistArray = userDefaults.array(forKey: savedTodoItemsKey) as? [PList] {
            items = todoItemPlistConverter.arrayFromPlist(plistArray)
        }
        
        return items
    }
}
