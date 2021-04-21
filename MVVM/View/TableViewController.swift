//
//  TableViewController.swift
//  MVVM
//
//  Created by Валерий Игнатьев on 20.04.21.
//

import UIKit

class TableViewController: UITableViewController {
    
    //Что бы достать данные нужна ссылка на viewModel
    //private - viewModel не собираемся никуда передовать и нигде показывать
    private var viewModel: TableViewViewModelType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Создаем viewModel
        viewModel = ViewModelTable()
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return viewModel?.numberOfRows() ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        
        guard let cellTV = cell,
              let viewModel = viewModel else { return UITableViewCell() }
        
        //создаем viewModel для ячейки
        let cellViewModel = viewModel.cellViewModel(for: indexPath)
        
        //отработал блок willSet из TableViewCell
        cellTV.viewModel = cellViewModel
        
        return cellTV
    }
}
