//
//  TodoListViewInterface.swift
//  TodoApp
//
//  Created by Anthony Merle on 07/06/2017.
//  Copyright © 2017 Anthony Merle. All rights reserved.
//

import Foundation

protocol TodoListViewInterface {
    func showTodoItems(_ todoItems: [TodoItem]) -> Void
    func showEmptyTodoItems() -> Void
}
