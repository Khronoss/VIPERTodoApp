//
//  TodoListInteractorIO.swift
//  TodoApp
//
//  Created by Anthony Merle on 04/06/2017.
//  Copyright © 2017 Anthony Merle. All rights reserved.
//

import Foundation

protocol TodoListInteractorInput {
    func findTodoItems() -> Void
}

protocol TodoListInteractorOutput {
    func todoItemsFound(_ upcomingItems: [TodoItem]) -> Void
}
