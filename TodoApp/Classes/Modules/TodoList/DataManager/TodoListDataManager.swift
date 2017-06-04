//
//  TodoListDataManager.swift
//  TodoApp
//
//  Created by Anthony Merle on 04/06/2017.
//  Copyright © 2017 Anthony Merle. All rights reserved.
//

import UIKit

protocol TodoListDataManager {
    func todoItems(from startDate: Date, to endDate: Date, completion: ([TodoItem]) -> Void ) -> Void
}
