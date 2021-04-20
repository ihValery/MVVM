//
//  TableViewCellViewModelType.swift
//  MVVM
//
//  Created by Валерий Игнатьев on 20.04.21.
//

import Foundation

protocol TableViewCellViewModelType: class {
    
    var fullName: String { get }
    var age: String { get }
}
