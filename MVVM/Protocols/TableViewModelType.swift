//
//  TableViewModelType.swift
//  MVVM
//
//  Created by Валерий Игнатьев on 20.04.21.
//

import Foundation

protocol TableViewViewModelType: class {
    
    func numberOfRows () -> Int
    
    func cellViewModel(for indexPath: IndexPath) -> TableViewCellViewModelType?
}
