//
//  TodoListModuleBuilder.swift
//  TodoApp
//
//  Created by Anthony Merle on 08/06/2017.
//  Copyright © 2017 Anthony Merle. All rights reserved.
//

import UIKit

class TodoListModuleBuilder: NSObject {
    
    func buildModule(withCalendar calendar: Calendar,
                     clock: Clock,
                     dataManager: TodoListDataManager) -> TodoListWireframe {
        let listWireframe = TodoListWireframe()
        let listPresenter = TodoListPresenter()
        let listInteractor = TodoListInteractor(calendar: calendar, clock: clock, dataManager: dataManager)
        
        listWireframe.presenter = listPresenter
        listPresenter.interactor = listInteractor
        listInteractor.output = listPresenter
        
        return listWireframe
    }
}
