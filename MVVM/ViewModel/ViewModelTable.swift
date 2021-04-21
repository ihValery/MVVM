//
//  ViewModel.swift
//  MVVM
//
//  Created by Валерий Игнатьев on 20.04.21.
//

import Foundation

class ViewModelTable: TableViewViewModelType {
    
    var profiles = [Profile(name: "Valery", surName: "Ihnatsyeu", age: 35),
                    Profile(name: "Martinov", surName: "Nikita", age: 40),
                    Profile(name: "Bryulo", surName: "Oleg", age: 36),
                    Profile(name: "Makar", surName: "Igor", age: 28)]
    
    func numberOfRows() -> Int {
        profiles.count
    }
    
    func cellViewModel(for indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
}
