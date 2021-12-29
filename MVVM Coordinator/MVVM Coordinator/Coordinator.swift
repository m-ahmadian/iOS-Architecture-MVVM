//
//  Coordinator.swift
//  MVVM Coordinator
//
//  Created by Mehrdad Ahmadian on 2021-12-28.
//

import Foundation
import UIKit

protocol Coordinator {
    var parentCoordinator: Coordinator? { get set }
    var children: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}
