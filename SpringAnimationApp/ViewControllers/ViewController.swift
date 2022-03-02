//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Юрий Скворцов on 27.02.2022.
//

import Spring

class ViewController: UIViewController {
    
    
    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var descriptionLabel: UILabel!
    
    var currentAnimation: Animation!
    var nextAnimation: Animation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentAnimation = getAnimation()
        changeDescription()
    }
    
    
    @IBAction func runAnimation(_ sender: UIButton) {
        setupAnimation(with: currentAnimation)
        animationView.animate()
        
        changeDescription()
        
        nextAnimation = getAnimation()
        sender.setTitle("Run \(nextAnimation.preset)", for: .normal)
        
        currentAnimation = nextAnimation
    }
    
    
    private func getAnimation() -> Animation {
        let preset = DataManager.share.animations.randomElement()
        let curve = DataManager.share.curves.randomElement()
        let force = Double.random(in: 0.5...2)
        let delay = Double.random(in: 0.1...0.7)
        let duration = Double.random(in: 1...2)
        
        let animation = Animation(
            preset: preset?.rawValue ?? "",
            curve: curve?.rawValue ?? "",
            force: force,
            delay: delay,
            duration: duration
        )
        return animation
    }
    
    private func setupAnimation(with animation: Animation) {
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.delay = animation.delay
        animationView.duration = animation.duration
    }
    
    private func changeDescription() {
        descriptionLabel.text = currentAnimation.description
    }
}

