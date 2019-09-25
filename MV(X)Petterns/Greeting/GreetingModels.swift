//
//  GreetingModels.swift
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

enum ShowGreeting {
    
    enum Greeting {
        
        struct Request {
        }
        
        struct Response {
            let fullName: String
        }
        
        struct ViewModel {
            let greeting: String
        }
    }
}

struct Person {
    let name: String
    let surname: String
}
