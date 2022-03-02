//
//  DataManager.swift
//  SpringAnimationApp
//
//  Created by Юрий Скворцов on 02.03.2022.
//
import Spring

class DataManager {
    static let share = DataManager()
    
    let animations = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
