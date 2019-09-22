//
//  GreetingPresenter.swift
//  MV(X)Petterns
//
//  Created by Alexey Efimov on 21/09/2019.
//  Copyright (c) 2019 Alexey Efimov. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol GreetingPresentationLogic {
    func presentGreeting(response: ShowGreeting.Greeting.Response)
}

class GreetingPresenter: GreetingPresentationLogic {
    
    weak var viewController: GreetingDisplayLogic?
    
    // MARK: Do something
    func presentGreeting(response: ShowGreeting.Greeting.Response) {
        let greeting = "Hello, \(response.fullName)!"
        let viewModel = ShowGreeting.Greeting.ViewModel(greeting: greeting)
        viewController?.setGreeting(viewModel: viewModel)
    }
}