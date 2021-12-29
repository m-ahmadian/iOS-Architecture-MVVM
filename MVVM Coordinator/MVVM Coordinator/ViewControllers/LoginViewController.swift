//
//  LoginViewController.swift
//  MVVM Coordinator
//
//  Created by Mehrdad Ahmadian on 2021-12-28.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - Properties
    var viewModel: LoginViewModel!

    // MARK: - Outlets
    @IBOutlet weak var registerButton: UIButton!

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - Actions
    @IBAction func registerButtonTapped(_ sender: Any) {
        viewModel.goToRegister()
    }

}

