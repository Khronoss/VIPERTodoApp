//
//  PListConverter.swift
//  TodoApp
//
//  Created by Anthony Merle on 04/06/2017.
//  Copyright © 2017 Anthony Merle. All rights reserved.
//

import Foundation

typealias PList = [String: Any]

protocol PListConverter {
    associatedtype T
    
    func arrayToPlist(_ array: [T]) -> [PList]
    func arrayFromPlist(_ array: [PList]) -> [T]
    
    func objectToPlist(_ object: T) -> PList
    func objectFromPlist(_ plist: PList) -> T
}
