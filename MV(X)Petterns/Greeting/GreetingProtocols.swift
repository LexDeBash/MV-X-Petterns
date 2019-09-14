//
//  GreetingProtocols.swift
//  MV(X)Petterns
//
//  Created by Alexey Efimov on 09/09/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import Foundation


struct GreetingData {
    let greeting: String
    let subject: String
}

protocol GreetingInteractorProtocol {
    func provideGreetingData()
}

protocol GreetingPresenterProtocol: class {
    func receiveGreetingData(greetingData: GreetingData)
    func didTapShowGreetingButton()
}

protocol GreetingViewProtocol: class {
    func setGreeting(greeting: String)
}

protocol GreetingConfiguratorProtocol: class {
    func configure(with viewController: GreetingViewController)
}
