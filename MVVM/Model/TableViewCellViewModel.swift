//
//  TableViewCellViewModel.swift
//  MVVM
//
//  Created by Валерий Игнатьев on 20.04.21.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {
    
    private var profile: Profile!
    
    var fullName: String {
        profile.name + " " + profile.surName
    }
    
    var age: String {
        String(describing: profile.age)
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
