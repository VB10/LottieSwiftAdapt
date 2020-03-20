//
//  ViewController.swift
//  LottieExample
//
//  Created by Veli on 21.03.2020.
//  Copyright © 2020 Veli. All rights reserved.
//

import UIKit
import Lottie
class ViewController: UIViewController {
    @IBOutlet weak var lottie: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let animation = Animation.named("bird", subdirectory: "TestAnimations")
          lottie.animation = animation
          lottie.contentMode = .scaleAspectFit
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        lottie.play(fromProgress: 0,
                    toProgress: 0.3,
                    loopMode: LottieLoopMode.loop,
                    completion: { (finished) in
                        if finished {
                            print("Animation Complete")
                        } else {
                            print("Animation cancelled")
                        }
        })
        
    }
}

