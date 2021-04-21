//
//  TableViewModelType.swift
//  MVVM
//
//  Created by Валерий Игнатьев on 20.04.21.
//

import Foundation

protocol TableViewViewModelType {
    
    func numberOfRows () -> Int
    
    //Генерирует viewModel для indexPath (т.е. для конкретного адресса)
    func cellViewModel(for indexPath: IndexPath) -> TableViewCellViewModelType?
    
    func viewModelForSelectedRow() -> DetailViewModelType?
    
    //Вспомогательный метод для получения indexPath по которому и вернем viewModel
    func selectRow(_ indexPath: IndexPath)
}
