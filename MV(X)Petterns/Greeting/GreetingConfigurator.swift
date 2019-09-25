//
//  GreetingConfigurator.swift
//  MV(X)Petterns
//
//  Created by Alexey Efimov on 21/09/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import Foundation

final class GreetingConfigurator {
    
    static let shared = GreetingConfigurator()
    
    func configure(with view: GreetingViewController) {
        let viewController = view
        let interactor = GreetingInteractor()
        let presenter = GreetingPresenter()
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.viewController = viewController
    }
}
