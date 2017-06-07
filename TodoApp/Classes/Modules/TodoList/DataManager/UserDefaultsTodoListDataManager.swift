//
//  UserDefaultsTodoListDataManager.swift
//  TodoApp
//
//  Created by Anthony Merle on 04/06/2017.
//  Copyright © 2017 Anthony Merle. All rights reserved.
//

import UIKit

class UserDefaultsTodoListDataManager: NSObject, TodoListDataManager {
    var userDefaultsStore: UserDefaultsStore
    
    init(defaultsStore: UserDefaultsStore) {
        self.userDefaultsStore = defaultsStore
    }
    
    func todoItems(from startDate: Date, to endDate: Date, completion: ([TodoItem]) -> Void) {
        
        let allTodoItems = userDefaultsStore.todoItems()
        
        let filteredTodoItems = allTodoItems.filter { (todoItem) -> Bool in
            let startComparison = startDate.compare(todoItem.dueDate)
            let endComparison = endDate.compare(todoItem.dueDate)
            
            return startComparison == .orderedAscending &&
                endComparison == .orderedDescending
        }

        completion(filteredTodoItems)
    }
}
