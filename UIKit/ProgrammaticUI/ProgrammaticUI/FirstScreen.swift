//
//  FirstScreen.swift
//  ProgrammaticUI
//
//  Created by Kaan Uzman on 9/8/23.
//

import UIKit

class FirstScreen: UIViewController {
    
    let nextButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupButton()
        title = "First Screen" // appbar title
        navigationController?.navigationBar.prefersLargeTitles = true // appbar large title centerTitle false
    }

    func setupButton() -> Void {
        view.addSubview(nextButton)
        
        nextButton.configuration = .tinted()
        nextButton.configuration?.baseBackgroundColor = .systemOrange
        nextButton.configuration?.baseForegroundColor = .systemOrange
        nextButton.configuration?.title = "Next"
        
        nextButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor), // centering horizontally
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor), // centering vertically
            nextButton.widthAnchor.constraint(equalToConstant: 200),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
            
        ])
    }
    
    @objc func goToNextScreen() -> Void {
        let nextScreen = SecondScreen()
        nextScreen.title = "Second Screen"
        navigationController?.pushViewController(nextScreen, animated: true)
    }

}

#Preview("First Screen", device: .iPhone12ProMax)) {
    FirstScreen()
}

