//
//  RevealAnimator.swift
//  LogoReveal
//
//  Created by User on 5/29/17.
//  Copyright © 2017 Razeware LLC. All rights reserved.
//

import UIKit

class RevealAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    
    let animationDuration = 2.0
    var operation: UINavigationControllerOperation = .push
    weak var storedContext: UIViewControllerContextTransitioning?
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return animationDuration
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        //
        storedContext = transitionContext
        let fromVC = transitionContext.viewController(forKey: .from) as! MasterViewController
        let toVC = transitionContext.viewController(forKey: .to) as! DetailViewController
    }

}
