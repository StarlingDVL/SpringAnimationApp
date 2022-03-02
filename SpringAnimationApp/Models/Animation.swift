//
//  Animation.swift
//  SpringAnimationApp
//
//  Created by Юрий Скворцов on 02.03.2022.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let delay: Double
    let duration: Double
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        delay: \(String(format: "%.2f", delay))
        duration: \(String(format: "%.2f", duration))
        """
    }
}
