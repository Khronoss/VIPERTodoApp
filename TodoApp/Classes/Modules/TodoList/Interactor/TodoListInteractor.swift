//
//  TodoListInteractor.swift
//  TodoApp
//
//  Created by Anthony Merle on 04/06/2017.
//  Copyright © 2017 Anthony Merle. All rights reserved.
//

import UIKit

class TodoListInteractor: NSObject, TodoListInteractorInput {
    
    var output: TodoListInteractorOutput?
    
    var calendar: Calendar!
    var clock: Clock!
    var dataManager: TodoListDataManager!
    
    required init(calendar: Calendar, clock: Clock, dataManager: TodoListDataManager) {
        super.init()
        
        self.calendar = calendar
        self.clock = clock
        self.dataManager = dataManager
    }
    
    func findTodoItems() {
        
        let today = clock.today()
        let nextWeek = calendar.dateForEndOfFollowingWeekWith(today)

        dataManager.todoItems(from: today, to: nextWeek) { (todoItems) in
            self.output?.todoItemsFound(todoItems)
        }
    }
}
