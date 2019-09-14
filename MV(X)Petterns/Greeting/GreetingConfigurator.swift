//
//  GreetingConfigurator.swift
//  MV(X)Petterns
//
//  Created by Alexey Efimov on 09/09/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import Foundation

class GreetingConfigurator: GreetingConfiguratorProtocol {
    
    func configure(with viewController: GreetingViewController) {
        let presenter = GreetingPresenter(view: viewController)
        let interactor = GreetingInteractor(presenter: presenter)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
    }
}
