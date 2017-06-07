//
//  TodoListPresenter.swift
//  TodoApp
//
//  Created by Anthony Merle on 07/06/2017.
//  Copyright © 2017 Anthony Merle. All rights reserved.
//

import UIKit

class TodoListPresenter: NSObject, TodoListInteractorOutput, TodoListModuleInterface {

    var interactor: TodoListInteractorInput!
    var interface: TodoListViewInterface!
    
    // MARK: TodoListModuleInterface
    
    func updateView() -> Void {
        interactor.findTodoItems()
    }
    
    // MARK: TodoListInteractorOutput
    
    func todoItemsFound(_ upcomingItems: [TodoItem]) {
        if upcomingItems.count == 0 {
            interface.showEmptyTodoItems()
        } else {
            interface.showTodoItems(upcomingItems)
        }
    }
    
}
