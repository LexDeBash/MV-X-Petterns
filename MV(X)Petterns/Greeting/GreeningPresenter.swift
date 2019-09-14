//
//  GreeningPresenter.swift
//  MV(X)Petterns
//
//  Created by Alexey Efimov on 09/09/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import Foundation

protocol GreetingPresenterProtocol: class {
    func didTapShowGreetingButton()
}

class GreetingPresenter: GreetingPresenterProtocol, GreetingInteractorOutput {
    
    weak var view: GreetingViewProtocol!
    var interactor: GreetingInteractorProtocol!
    
    required init(view: GreetingViewController) {
        self.view = view
    }
    
    func didTapShowGreetingButton() {
        interactor.provideGreetingData()
    }
    
    func receiveGreetingData(greetingData: GreetingData) {
        let greeting = greetingData.greeting + " " + greetingData.subject
        view.setGreeting(greeting: greeting)
    }
}
