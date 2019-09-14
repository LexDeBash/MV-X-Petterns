//
//  GreetingInteractor.swift
//  MV(X)Petterns
//
//  Created by Alexey Efimov on 09/09/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import Foundation

class GreetingInteractor: GreetingInteractorProtocol {
    
    weak var presenter: GreetingPresenterProtocol!
    
    required init(presenter: GreetingPresenterProtocol) {
        self.presenter = presenter
    }
    
    func provideGreetingData() {
        let person = Person(name: "Tim", surname: "Cook")
        let subject = person.name + " " + person.surname
        let greeting = GreetingData(greeting: "Hello", subject: subject)
        presenter.receiveGreetingData(greetingData: greeting)
    }
}
