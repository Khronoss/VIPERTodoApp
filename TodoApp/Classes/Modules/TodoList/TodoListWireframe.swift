//
//  TodoListWireframe.swift
//  TodoApp
//
//  Created by Anthony Merle on 07/06/2017.
//  Copyright © 2017 Anthony Merle. All rights reserved.
//

import UIKit

class TodoListWireframe: NSObject {
    
    let listControllerIdentifier = "ListController"
    
    var presenter: TodoListPresenter!
    
    private var _mainStoryboard: UIStoryboard? = nil
    var mainStoryboard: UIStoryboard {
        if _mainStoryboard == nil {
            _mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        }
        return _mainStoryboard!
    }
    
    func presentListInterfaceFrom(window aWindow: UIWindow?) -> Void {
        guard let window = aWindow else { return }
        
        let controller = getListController()
        
        controller.presenter = presenter
        presenter.interface = controller
        
        window.rootViewController = controller
    }

    func getListController() -> TodoListTableViewController {
        let listController = mainStoryboard.instantiateViewController(withIdentifier: listControllerIdentifier) as! TodoListTableViewController
        
        return listController
    }
}
