//
//  DataManager.swift
//  SpringAnimationRevenge
//
//  Created by Olga Yurchuk on 10.12.2022.
//

import SpringAnimation

class DataManager {
    
    static let dataManager = DataManager()
    
    let presets = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
