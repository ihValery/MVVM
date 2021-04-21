//
//  DetailViewModelType.swift
//  MVVM
//
//  Created by Валерий Игнатьев on 21.04.21.
//

import Foundation

protocol DetailViewModelType {
    
    var description: String { get }
    var name: String { get }
    var surName: String { get }
    var age: String { get }
}
