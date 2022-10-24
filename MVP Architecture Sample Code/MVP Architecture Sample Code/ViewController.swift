//
//  ViewController.swift
//  MVP Architecture Sample Code
//
//  Created by Mehrdad Behrouz Ahmadian on 2022-10-23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var presenter: Presenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter = Presenter(view: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        presenter?.fetchData()
    }
    
}

extension ViewController: PresenterView {
    func display(newData: String?) {
        label.text = newData
    }
}
