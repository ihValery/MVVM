//
//  DetailViewController.swift
//  MVVM
//
//  Created by Валерий Игнатьев on 21.04.21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var fullLabel: UILabel!
    
    var viewModel: DetailViewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        self.fullLabel.text = viewModel.description
        self.nameLabel.text = viewModel.name
        self.surNameLabel.text = viewModel.surName
        self.ageLabel.text = viewModel.age
    }
}
