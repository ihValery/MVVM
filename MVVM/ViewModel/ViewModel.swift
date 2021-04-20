//
//  ViewModel.swift
//  MVVM
//
//  Created by Валерий Игнатьев on 20.04.21.
//

import Foundation

class ViewModel {
    
    private var profile = Profile(name: "Valery", surName: "Ihnatsyeu", age: 35)
    
    var name: String {
        profile.name
    }
    
    var surName: String {
        profile.surName
    }
    
    var age: String {
        return "\(profile.age)"
    }
}
