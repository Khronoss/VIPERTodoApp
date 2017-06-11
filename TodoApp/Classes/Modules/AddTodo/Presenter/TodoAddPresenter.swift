//
//  TodoAddPresenter.swift
//  TodoApp
//
//  Created by Anthony Merle on 11/06/2017.
//  Copyright © 2017 Anthony Merle. All rights reserved.
//

import UIKit

class TodoAddPresenter: NSObject, TodoAddInteractorOutput {
    
    var interactor: TodoAddInteractorInput!
//    var interface: TodoAddViewInterface!
    
    
    
    // MARK: TodoAddInteractorOutput
    
    func didAddTodoItem() {
    }
    
    func failedAddTodoItem() {
    }
}
