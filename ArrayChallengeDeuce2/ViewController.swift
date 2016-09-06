//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
        func addNameToDeliLine(name: String) -> String {
            if name == "Billy Crystal" {
                deliLine.insert("\(name)", atIndex: 0)
                return("Welcome Billy! You can sit wherever you like.")
            } else if name == "Meg Crystal"{
                deliLine.insert("\(name)", atIndex: 0)
                return("Welcome Meg! You can sit wherever you like.")
            } else if deliLine.count == 0 {
                deliLine.append("\(name)")
                return("Welcome \(name), you're first in line!") }
            else { deliLine.append("\(name)")
                return("Welcome \(name), you're number \(deliLine.count) in line.")
    
            }
        }

    
        func nowServing() -> String {
            if deliLine.isEmpty {
                return("There is no one to be served.")
            } else {
                let customer = "\(deliLine[0])"
                let x = "\(customer)"
                deliLine.removeAtIndex(0)
                return("Now serving \(x)!")
            }
        }
    
    
    var line: [String] = []
    var message = "The line is:"
    
    func deliLineDescription() -> String {
        if deliLine.isEmpty {
            return("The line is currently empty.")
        } else {
            var greeting = "\(message)"
            for (index, person) in deliLine.enumerate() {
                greeting += ("\n\(index+1). \(person)")
            }
            return(greeting)
        }
    }
    
}
