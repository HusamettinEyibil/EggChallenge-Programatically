//
//  ClockViewController.swift
//  EggChallenge Programatically
//
//  Created by Hüsamettin  Eyibil on 6.01.2020.
//  Copyright © 2020 Hüsamettin  Eyibil. All rights reserved.
//

import UIKit

class ClockViewController: UIViewController {
    
    var senderTag : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayouts()
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
    
    private func setupLayouts() {
        view.addSubview(bgImageView)
        bgImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        bgImageView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        bgImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        bgImageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
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
