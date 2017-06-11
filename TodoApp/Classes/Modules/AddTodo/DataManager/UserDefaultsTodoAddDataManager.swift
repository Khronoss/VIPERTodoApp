//
//  UserDefaultsTodoAddDataManager.swift
//  TodoApp
//
//  Created by Anthony Merle on 11/06/2017.
//  Copyright © 2017 Anthony Merle. All rights reserved.
//

import UIKit

class UserDefaultsTodoAddDataManager: NSObject, TodoAddDataManager {
    
    var userDefaultsStore: UserDefaultsStore
    
    init(defaultsStore: UserDefaultsStore) {
        self.userDefaultsStore = defaultsStore
    }
    
    func addItem(_ item: TodoItem, completion: (Error?) -> Void) {
        var allTodoItems = userDefaultsStore.todoItems()
        
        allTodoItems.append(item)
        
        userDefaultsStore.setTodoItems(allTodoItems)
        
        completion(nil)
    }
    
    func newItem() -> TodoItem {
        return TodoItem()
    }
}
