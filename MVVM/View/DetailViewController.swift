//
//  DetailViewController.swift
//  MVVM
//
//  Created by Валерий Игнатьев on 21.04.21.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var fullLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var viewModel: DetailViewModelType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Где происходит магия Data binding via Boxing
        //Связываем свойство с ярлыком (как только меняется age - менятся значение в ярлыке)
        viewModel?.age.bind { [unowned self] in
            guard let string = $0 else { return }
            self.fullLabel.text = string
        }
        
        timerForFun()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        self.fullLabel.text = viewModel.description
    }
    
    @IBAction func updateValue(_ sender: UIButton) {
        guard let text = textField.text, text != "" else { return }
        viewModel?.age.value = text
    }
    
    //Самописная отсрочка перед выполнение блока кода
    private func delay(delay: Double, closure: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + delay) {
            closure()
        }
    }
    
    func timerForFun() {
        delay(delay: 1) { [weak self] in
            self?.viewModel?.age.value = "прошла 1 сек."
        }
        delay(delay: 2) { [weak self] in
            self?.viewModel?.age.value = "прошло 2 сек."
        }
        delay(delay: 3) { [weak self] in
            self?.viewModel?.age.value = "прошло 3 сек."
        }
        delay(delay: 4) { [weak self] in
            self?.viewModel?.age.value = "прошло 4 сек."
        }
        delay(delay: 5) { [weak self] in
            self?.viewModel?.age.value = "прошло 5 сек."
        }
        delay(delay: 6) { [weak self] in
            self?.viewModel?.age.value = "прошло 6 сек."
        }
        delay(delay: 7) { [weak self] in
            self?.viewModel?.age.value = "прошло 7 сек."
        }
        delay(delay: 8) { [weak self] in
            self?.viewModel?.age.value = "прошло 8 сек."
        }
        delay(delay: 9) { [weak self] in
            self?.viewModel?.age.value = "прошло 9 сек."
        }
        delay(delay: 10) { [weak self] in
            self?.viewModel?.age.value = "прошло 10 сек."
        }
    }
}
