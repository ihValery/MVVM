//
//  TableViewController.swift
//  MVVM
//
//  Created by Валерий Игнатьев on 20.04.21.
//

import UIKit

class TableViewController: UITableViewController {
    
    var viewModel: TableViewViewModelType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return viewModel?.numberOfRows() ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        guard let viewModel = viewModel else { return UITableViewCell() }
        
        let cellViewModel = viewModel.cellViewModel(for: indexPath)
        
        cell.viewModel = cellViewModel
        
//        cell.fullNameLabel.text = cellViewModel?.fullName
//        cell.ageLabel.text = cellViewModel?.age
        
        return cell
    }
}
