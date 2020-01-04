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
        label.backgroundColor = .red
        
        return label
    }()
    
    private func setupLayouts() {
        view.addSubview(bgImageView)
        bgImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        bgImageView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        bgImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        bgImageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true

        bgImageView.addSubview(label)
        label.widthAnchor.constraint(equalToConstant: 250).isActive = true
        label.heightAnchor.constraint(equalToConstant: 75).isActive = true
        //label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: view.frame.height / 3).isActive = true
        label.topAnchor.constraint(equalTo: bgImageView.topAnchor, constant: 120).isActive = true
        label.centerXAnchor.constraint(equalTo: bgImageView.centerXAnchor).isActive = true
        label.layer.zPosition = 9999


        
    }
    
}


