//
//  DetailViewModel.swift
//  MVVM
//
//  Created by Валерий Игнатьев on 21.04.21.
//

import Foundation

class DetailViewModel: DetailViewModelType {
    
    private var profile: Profile
    
    var description: String {
        String(describing: "\(profile.name) \(profile.surName) is \(profile.age) old")
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
