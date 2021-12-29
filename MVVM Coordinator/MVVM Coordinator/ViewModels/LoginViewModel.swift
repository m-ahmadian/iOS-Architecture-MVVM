//
//  LoginViewModel.swift
//  MVVM Coordinator
//
//  Created by Mehrdad Ahmadian on 2021-12-28.
//

import Foundation

class LoginViewModel {
    weak var appCoordinator: AppCoordinator!

    func goToRegister() {
        appCoordinator.goToRegister()
    }
}
