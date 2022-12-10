//
//  Animation.swift
//  SpringAnimationRevenge
//
//  Created by Olga Yurchuk on 08.12.2022.
//

import Foundation
import SpringAnimation

struct Animation {
    let preset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    var animationDescription: String {
        """
        preset : \(self.preset)
        curve : \(self.curve)
        force : \(String(format: "%.02f", self.force))
        duration : \(String(format: "%.02f", self.duration))
        delay : \(String(format: "%.02f", self.delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            preset: AnimationPreset.allCases.randomElement()?.rawValue ?? "morph",
            curve: AnimationCurve.allCases.randomElement()?.rawValue ?? "easeIn",
            force: CGFloat.random(in: 0.5...10),
            duration: CGFloat.random(in: 0.5...4),
            delay: CGFloat.random(in: 0.5...1.5)
        )
    }
}
