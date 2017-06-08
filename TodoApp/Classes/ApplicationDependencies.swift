//
//  ApplicationDependencies.swift
//  TodoApp
//
//  Created by Anthony Merle on 08/06/2017.
//  Copyright © 2017 Anthony Merle. All rights reserved.
//

import UIKit

class ApplicationDependencies: NSObject {

    var rootWireframe: TodoListWireframe!
    
    override init() {
        super.init()
        
        generateDependencies()
    }
    
    func initializeRootModule(in window: UIWindow?) -> Void {
        rootWireframe.presentListInterfaceFrom(window: window)
    }
    
    private func generateDependencies() -> Void {
        
        let calendar = Calendar.current
        let clock = DeviceClock()
        
        let plistConverter = TodoItemPListConverter()
        let defaultsStore = UserDefaultsStore(userDefaults: UserDefaults.standard, plistConverter: plistConverter)
        let listDataManager = UserDefaultsTodoListDataManager(defaultsStore: defaultsStore)
        
        let listWireframe = TodoListWireframe()
        let listPresenter = TodoListPresenter()
        let listInteractor = TodoListInteractor(calendar: calendar, clock: clock, dataManager: listDataManager)

        listWireframe.presenter = listPresenter
        listPresenter.interactor = listInteractor
        listInteractor.output = listPresenter
        
        rootWireframe = listWireframe
    }
}
