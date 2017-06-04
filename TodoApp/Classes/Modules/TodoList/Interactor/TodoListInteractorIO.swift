//
//  TodoListInteractorIO.swift
//  TodoApp
//
//  Created by Anthony Merle on 04/06/2017.
//  Copyright © 2017 Anthony Merle. All rights reserved.
//

import Foundation

protocol TodoListInteractorInput {
    func findUpcomingItems() -> Void
}

protocol TodoListInteractorOutput {
    func upcomingItemsFound(_ upcomingItems: [TodoItem]) -> Void
}
