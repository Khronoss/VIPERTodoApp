//
//  TodoAddInteractor.swift
//  TodoApp
//
//  Created by Anthony Merle on 09/06/2017.
//  Copyright © 2017 Anthony Merle. All rights reserved.
//

import UIKit

class TodoAddInteractor: NSObject, TodoAddInteractorInput {

    var output: TodoAddInteractorOutput?
    
    var dataManager: TodoAddDataManager!

    required init(dataManager: TodoAddDataManager) {
        super.init()
        
        self.dataManager = dataManager;
    }
    
    func addNewItem(with title: String, and dueDate: Date) {
        // add item to store
        let item = dataManager.newItem()
        item.title = title
        item.dueDate = dueDate
        
        dataManager.addItem(item) { (error) in
            if error != nil {
                output?.failedAddTodoItem()
                return
            }
            output?.didAddTodoItem()
        }
    }
}
