//
//  GreetingViewController.swift
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

protocol GreetingDisplayLogic: class {
    func setGreeting(viewModel: ShowGreeting.Greeting.ViewModel)
}

class GreetingViewController: UIViewController, GreetingDisplayLogic {
    
    @IBOutlet var greetingLabel: UILabel!
    
    var interactor: GreetingBusinessLogic?
    
    // MARK: Object lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        GreetingConfigurator.shared.configure(with: self)
    }
        
    // MARK: Do something
    @IBAction func showGreetingPressed() {
        let request = ShowGreeting.Greeting.Request()
        interactor?.setFullName(request: request)
    }
    
    func setGreeting(viewModel: ShowGreeting.Greeting.ViewModel) {
        greetingLabel.text = viewModel.greeting
    }
}
