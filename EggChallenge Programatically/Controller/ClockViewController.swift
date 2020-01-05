//
//  ClockViewController.swift
//  EggChallenge Programatically
//
//  Created by Hüsamettin  Eyibil on 6.01.2020.
//  Copyright © 2020 Hüsamettin  Eyibil. All rights reserved.
//

import UIKit
import Clocket

class ClockViewController: UIViewController {
    
    var senderTag : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayouts()
        clock.displayRealTime = true
        clock.startClock()
        print("sender:", senderTag)
        // Do any additional setup after loading the view.
    }
    
    let bgImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "egg")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.alpha = 0.65
        return imageView
    }()
    
    let clock : Clocket = {
        let view = Clocket(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
        return view
    }()
    
    let startButton : CustomButton = {
        let button = CustomButton()
        button.layer.cornerRadius = 20
        button.layer.masksToBounds = true
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Start Clock", for: .normal)
        button.titleLabel?.font = UIFont(name: "Chalkduster", size: 26)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.652284264, green: 0.652284264, blue: 0.652284264, alpha: 0.1952054795)
        button.addTarget(self, action: #selector(startButtonTapped(_:)), for: .touchUpInside)
        return button
    }()
    
    private func setupLayouts() {
        view.addSubview(bgImageView)
        bgImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        bgImageView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        bgImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        bgImageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
        view.addSubview(clock)
        clock.widthAnchor.constraint(equalToConstant: 300).isActive = true
        clock.heightAnchor.constraint(equalToConstant: 300).isActive = true
        clock.topAnchor.constraint(equalTo: view.topAnchor, constant: 130).isActive = true
        clock.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(startButton)
        startButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        startButton.heightAnchor.constraint(equalToConstant: 55).isActive = true
        startButton.topAnchor.constraint(equalTo: clock.bottomAnchor, constant: 80).isActive = true
        startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc
    private func startButtonTapped(_ sender: UIButton) {
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
