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
    
    required init(builder: TodoListModuleBuilder) {
        super.init()
        
        generateDependencies(withModuleBuilder: builder)
    }
    
    func initializeRootModule(in window: UIWindow?) -> Void {
        rootWireframe.presentListInterfaceFrom(window: window)
    }
    
    private func generateDependencies(withModuleBuilder builder: TodoListModuleBuilder) -> Void {
        
        let calendar = Calendar.current
        let clock = DeviceClock()
        
        let plistConverter = TodoItemPListConverter()
        let defaultsStore = UserDefaultsStore(userDefaults: UserDefaults.standard, plistConverter: plistConverter)
        let listDataManager = UserDefaultsTodoListDataManager(defaultsStore: defaultsStore)
        
        rootWireframe = builder.buildModule(withCalendar: calendar, clock: clock, dataManager: listDataManager)
    }
}
