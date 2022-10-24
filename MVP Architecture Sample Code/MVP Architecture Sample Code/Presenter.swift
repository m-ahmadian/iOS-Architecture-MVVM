//
//  Presenter.swift
//  MVP Architecture Sample Code
//
//  Created by Mehrdad Behrouz Ahmadian on 2022-10-23.
//

import Foundation

protocol PresenterView: AnyObject {
    func display(newData: String?)
}

class Presenter {
    let service = Service()
    
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        return formatter
    }()
    
    weak var view: PresenterView?
    
    init(view: PresenterView? = nil) {
        self.view = view
    }
    
    func fetchData() {
        service.fetchNumber { [weak self] number in
            let formatted = self?.formatter.string(for: number)
            
            DispatchQueue.main.async {
                self?.view?.display(newData: formatted)
            }
        }
    }
}
