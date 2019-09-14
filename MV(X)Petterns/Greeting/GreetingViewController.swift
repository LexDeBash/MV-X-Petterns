//
//  ViewController.swift
//  MV(X)Petterns
//
//  Created by Alexey Efimov on 31/08/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import UIKit

protocol GreetingViewProtocol: class {
    func setGreeting(greeting: String)
}

class GreetingViewController: UIViewController, GreetingViewProtocol {
    
    var presenter: GreetingPresenterProtocol!
    private let configurator: GreetingConfiguratorProtocol = GreetingConfigurator()

    @IBOutlet var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
    }

    @IBAction func showGreetingPressed() {
        presenter.didTapShowGreetingButton()
    }
    
    func setGreeting(greeting: String) {
        greetingLabel.text = greeting
    }
    
}

