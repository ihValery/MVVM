//
//  DetailViewModelType.swift
//  MVVM
//
//  Created by Валерий Игнатьев on 21.04.21.
//

import Foundation

protocol DetailViewModelType {
    
    var description: String { get }
    //get'бл свойство - которое можем получить, но не можем установить
    var age: Box<String?> { get }
}
