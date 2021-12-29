//
//  RegisterViewModel.swift
//  MVVM Coordinator
//
//  Created by Mehrdad Ahmadian on 2021-12-28.
//

import Foundation

class RegisterViewModel {
    weak var appCoordinator: AppCoordinator!

    func goToRegisterPage() {
        appCoordinator.goToRegisterPage()
    }
}
