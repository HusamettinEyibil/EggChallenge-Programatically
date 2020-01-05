//
//  ViewController.swift
//  EggChallenge Programatically
//
//  Created by Hüsamettin  Eyibil on 4.01.2020.
//  Copyright © 2020 Hüsamettin  Eyibil. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLayouts()
        
    }
    
    let bgImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "egg")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.alpha = 0.65
        return imageView
    }()
    
    let label : UILabel = {
        let label = UILabel()
        label.text = "How do you like your eggs?"
        label.font = UIFont(name: "Chalkduster", size: 26)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    let labelContainer : UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 280, height: 110))
        view.layer.cornerRadius = 30
        view.layer.masksToBounds = true
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.652284264, green: 0.652284264, blue: 0.652284264, alpha: 0.1952054795)
        return view
    }()
    
    let softButton :  CustomButton = {
        let button = CustomButton()
        button.layer.cornerRadius = 20
        button.layer.masksToBounds = true
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("SOFT", for: .normal)
        button.titleLabel?.font = UIFont(name: "Chalkduster", size: 23)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.652284264, green: 0.652284264, blue: 0.652284264, alpha: 0.1952054795)
        button.tag = 0
        button.addTarget(self, action: #selector(selectionButtonTapped(_:)), for: .touchUpInside)
        return button
    }()
    
    let mediumButton : CustomButton = {
        let button = CustomButton()
        button.layer.cornerRadius = 20
        button.layer.masksToBounds = true
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("MEDIUM", for: .normal)
        button.titleLabel?.font = UIFont(name: "Chalkduster", size: 23)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.652284264, green: 0.652284264, blue: 0.652284264, alpha: 0.1952054795)
        button.tag = 1
        button.addTarget(self, action: #selector(selectionButtonTapped(_:)), for: .touchUpInside)
        return button
    }()

    let hardButton : CustomButton = {
        let button = CustomButton()
        button.layer.cornerRadius = 20
        button.layer.masksToBounds = true
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("HARD", for: .normal)
        button.titleLabel?.font = UIFont(name: "Chalkduster", size: 23)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.652284264, green: 0.652284264, blue: 0.652284264, alpha: 0.1952054795)
        button.tag = 2
        button.addTarget(self, action: #selector(selectionButtonTapped(_:)), for: .touchUpInside)
        return button
    }()
    
    private func setupLayouts() {
        view.addSubview(bgImageView)
        bgImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        bgImageView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        bgImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        bgImageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
        labelContainer.addSubview(label)
        label.topAnchor.constraint(equalTo: labelContainer.topAnchor, constant: 5).isActive = true
        label.rightAnchor.constraint(equalTo: labelContainer.rightAnchor, constant: 5).isActive = true
        label.bottomAnchor.constraint(equalTo: labelContainer.bottomAnchor, constant: 15).isActive = true
        label.leftAnchor.constraint(equalTo: labelContainer.leftAnchor, constant: 5).isActive = true
        
        view.addSubview(labelContainer)
        labelContainer.widthAnchor.constraint(equalToConstant: 280).isActive = true
        labelContainer.heightAnchor.constraint(equalToConstant: 110).isActive = true
        labelContainer.topAnchor.constraint(equalTo: view.topAnchor, constant: 210).isActive = true
        labelContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(softButton)
        softButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        softButton.heightAnchor.constraint(equalToConstant: 55).isActive = true
        softButton.topAnchor.constraint(equalTo: labelContainer.bottomAnchor, constant: 100).isActive = true
        softButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(mediumButton)
        mediumButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        mediumButton.heightAnchor.constraint(equalToConstant: 55).isActive = true
        mediumButton.topAnchor.constraint(equalTo: softButton.bottomAnchor, constant: 40).isActive = true
        mediumButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(hardButton)
        hardButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        hardButton.heightAnchor.constraint(equalToConstant: 55).isActive = true
        hardButton.topAnchor.constraint(equalTo: mediumButton.bottomAnchor, constant: 40).isActive = true
        hardButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

    }
    
    @objc
    private func selectionButtonTapped(_ sender : UIButton) {
        let vc = ClockViewController()
        vc.senderTag = sender.tag
        navigationController?.pushViewController(vc, animated: true)
    }
    
}


