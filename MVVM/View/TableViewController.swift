//
//  TableViewController.swift
//  MVVM
//
//  Created by Валерий Игнатьев on 20.04.21.
//

import UIKit

class TableViewController: UITableViewController {
    
    var viewModel: TableViewModelType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return viewModel?.numberOfRows ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        guard let viewModel = viewModel else { return UITableViewCell() }
        let profile = viewModel.profiles[indexPath.row]
        
        cell.fullNameLabel.text = profile.name + " " + profile.surName
        cell.ageLabel.text = "\(profile.age)"
        
        return cell
    }
}
