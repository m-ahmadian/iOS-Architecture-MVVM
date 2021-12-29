//
//  LoginViewModel.swift
//  MVVM Coordinator
//
//  Created by Mehrdad Ahmadian on 2021-12-28.
//

import Foundation

protocol LoginNavigation: AnyObject {
    func goToRegisterPage()
    func goToHome()
}

class LoginViewModel {
    weak var appCoordinator: AppCoordinator!
    weak var navigation: LoginNavigation!

    func goToRegister() {
        appCoordinator.goToRegister()
    }
}
