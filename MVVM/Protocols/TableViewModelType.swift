//
//  TableViewModelType.swift
//  MVVM
//
//  Created by Валерий Игнатьев on 20.04.21.
//

import Foundation

protocol TableViewModelType {
    
    var numberOfRows: Int { get }
    var profiles: [Profile] { get }
}
