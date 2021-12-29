//
//  RegisterViewController.swift
//  MVVM Coordinator
//
//  Created by Mehrdad Ahmadian on 2021-12-28.
//

import UIKit

class RegisterViewController: UIViewController {

    // MARK: - Properties
    var viewModel: RegisterViewModel!

    // MARK: - Outlets
    @IBOutlet weak var backToLoginButton: UIButton!

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // MARK: - Actions
    @IBAction func backToLoginTapped(_ sender: Any) {
        viewModel.goToLogin()
    }
    
}
