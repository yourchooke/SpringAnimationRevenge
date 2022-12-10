//
//  ViewController.swift
//  SpringAnimationRevenge
//
//  Created by Olga Yurchuk on 08.12.2022.
//

import SpringAnimation
import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var animatedView: SpringView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animatedView.layer.cornerRadius = 30
    }

    @IBAction func runAnimationButton(_ sender: SpringButton) {
        animatedView.animation = "morph"
        animatedView.animate()
    }
    

}

