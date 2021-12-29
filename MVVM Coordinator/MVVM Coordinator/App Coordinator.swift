//
//  App Coordinator.swift
//  MVVM Coordinator
//
//  Created by Mehrdad Ahmadian on 2021-12-28.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        // The first time this coordinator started, is to launch login page
        goToLogin()
    }

    let storyboard = UIStoryboard(name: "Main", bundle: .main)

    func goToLogin() {
        // Instantiate LoginViewController
        let loginViewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController

        // Instantiate LoginViewModel
        let loginViewModel = LoginViewModel.init()

        // Set the Coordinator to the ViewModel
        loginViewModel.appCoordinator = self

        // Set the ViewModel to ViewController
        loginViewController.viewModel = loginViewModel

        // Push it
        navigationController.pushViewController(loginViewController, animated: true)
    }

    func goToRegister() {
        let registerViewController = storyboard.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        let registerViewModel = RegisterViewModel.init()
        registerViewModel.appCoordinator = self
        registerViewController.viewModel = registerViewModel
        navigationController.pushViewController(registerViewController, animated: true)
    }

}
