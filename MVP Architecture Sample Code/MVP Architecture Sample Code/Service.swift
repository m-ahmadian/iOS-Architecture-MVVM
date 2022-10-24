//
//  Service.swift
//  MVP Architecture Sample Code
//
//  Created by Mehrdad Behrouz Ahmadian on 2022-10-23.
//

import Foundation

protocol ServiceManager {
    func fetchNumber(_ completion: @escaping ((NumberFormatter) -> Void))
}

extension ServiceManager {
    func fetchNumber(_ completion: @escaping ((NumberFormatter) -> Void)) {}
}

struct Service: ServiceManager {
}
