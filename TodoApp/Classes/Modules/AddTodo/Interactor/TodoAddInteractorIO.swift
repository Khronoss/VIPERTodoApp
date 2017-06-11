//
//  TodoAddInteractorIO.swift
//  TodoApp
//
//  Created by Anthony Merle on 09/06/2017.
//  Copyright © 2017 Anthony Merle. All rights reserved.
//

import Foundation

protocol TodoAddInteractorInput {
    func addNewItem(with title: String, and dueDate: Date) -> Void
}

protocol TodoAddInteractorOutput {
    func didAddTodoItem() -> Void
    func failedAddTodoItem() -> Void
}
