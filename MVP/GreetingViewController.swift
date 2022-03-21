//
//  GreetingViewController.swift
//  MVP
//
//  Created by Олейник Богдан on 21.03.2022.
//

import UIKit

protocol GreetingViewProtocol: AnyObject {
    func setGreeting(_ greeting: String)
}

class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    private var presenter: GreetingPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let person = Person(name: "Tim", surname: "Cook")
        presenter = GreetingPresenter(view: self, person: person)
    }

    @IBAction func showGreetingPressed() {
        presenter.showGreeting()
    }
    
}

extension GreetingViewController: GreetingViewProtocol {
    func setGreeting(_ greeting: String) {
        greetingLabel.text = greeting
    }
}
