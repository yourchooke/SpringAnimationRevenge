//
//  ViewController.swift
//  SpringAnimationRevenge
//
//  Created by Olga Yurchuk on 08.12.2022.
//

import SpringAnimation
import UIKit

class ViewController: UIViewController {
    
    private var currentAnimation = Animation.getRandomAnimation()
    @IBOutlet weak var animatedView: SpringView!
    @IBOutlet weak var animatedViewLable: UILabel!
    @IBOutlet weak var runAnimationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animatedView.layer.cornerRadius = 30
        runAnimationButton.setTitle("Run \(currentAnimation.preset)", for: .normal)
        runAnimationButton.layer.cornerRadius = 15
        animatedViewLable.text = currentAnimation.animationDescription
        
    }
    
    @IBAction func runAnimation(_ sender: UIButton) {
        animatedViewLable.text = currentAnimation.animationDescription
        animatedView.animation = currentAnimation.preset
        animatedView.curve = currentAnimation.curve
        animatedView.force = currentAnimation.force
        animatedView.duration = currentAnimation.duration
        animatedView.delay = currentAnimation.delay
        animatedView.animate()
        
        currentAnimation = Animation.getRandomAnimation()
        sender.setTitle("Run \(currentAnimation.preset)", for: .normal)
    }
}

