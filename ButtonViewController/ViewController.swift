//
//  ViewController.swift
//  ButtonViewController
//
//  Created by IM Mac-11 on 2024-11-04.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the background color to system green
        self.view.backgroundColor = .systemGreen
        
        // Create a button
        let button = UIButton(type: .system)
        button.setTitle("Tap Me", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        
        // Add action for button tap
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        // Add button to the view
        self.view.addSubview(button)
        
        // Set button constraints
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 150),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    // Action method for button tap
    @objc func buttonTapped() {
        let secondViewController = SecondViewController()
        navigationController?.pushViewController(secondViewController, animated: true)
    }
}
