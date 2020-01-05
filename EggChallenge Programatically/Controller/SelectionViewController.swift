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
//        label.alpha = 1
        
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

    }
    
}


