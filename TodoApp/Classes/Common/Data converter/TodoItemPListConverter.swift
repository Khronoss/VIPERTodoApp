//
//  TodoItemPListConverter.swift
//  TodoApp
//
//  Created by Anthony Merle on 04/06/2017.
//  Copyright © 2017 Anthony Merle. All rights reserved.
//

import UIKit

class TodoItemPListConverter: PListConverter {
    typealias T = TodoItem
    
    private let titlePListKey = "title"
    private let datePListKey = "date"
    
    func arrayToPlist(_ array: [TodoItem]) -> [PList] {
        return array.map({ (todoItem) -> PList in
            return self.objectToPlist(todoItem)
        })
    }
    
    func arrayFromPlist(_ array: [PList]) -> [TodoItem] {
        return array.map({ (plist) -> TodoItem in
            return self.objectFromPlist(plist)
        })
    }
    
    func objectToPlist(_ object: TodoItem) -> PList {
        var plist: PList = [:]
        
        plist[titlePListKey] = object.title
        plist[datePListKey] = object.dueDate
        
        return plist
    }
    
    func objectFromPlist(_ plist: PList) -> TodoItem {
        let title = plist[titlePListKey] as! String
        let date = plist[datePListKey] as! Date

        return TodoItem(title: title, dueDate: date)
    }
}
