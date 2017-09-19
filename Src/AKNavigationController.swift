//
//  HGNavigationController.swift
//  HIG
//
//  Created by arkin on 2016/10/14.
//  Copyright © 2016年 arkin. All rights reserved.
//

import UIKit

public class AKNavigationController: UINavigationController,UINavigationControllerDelegate,UIGestureRecognizerDelegate {
    
    // MARK: statusbar style
    var statusBarStyle: AKStatusBarStyle = .dark {
        didSet {
            setNeedsStatusBarAppearanceUpdate()
        }
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.setBackgroundImage(UIImage.image(from: UIColor.clear), for: .default)
        navigationBar.barStyle = .black
        navigationBar.isTranslucent = true
        navigationBar.layer.masksToBounds = true
        weak var wearSelf = self
        interactivePopGestureRecognizer?.delegate = wearSelf
        delegate = wearSelf
    }
    
    override public func pushViewController(_ viewController: UIViewController, animated: Bool) {
        viewController.hidesBottomBarWhenPushed = viewControllers.count > 0
        interactivePopGestureRecognizer?.isEnabled = false
        super.pushViewController(viewController, animated: animated)
    }
    
    public func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        var disableIneractionGesture = false
        if let vc = viewController as? AKBaseViewController {
            disableIneractionGesture = vc.disableIneractionGesture
        }
        interactivePopGestureRecognizer?.isEnabled = viewControllers.count > 1 && !disableIneractionGesture
    }
    
    public func navigationController(_ navigationController: UINavigationController,
                                     animationControllerFor operation: UINavigationControllerOperation,
                                     from fromVC: UIViewController,
                                     to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        if operation == .push, let vc = toVC as? AKBaseViewController {
            return vc.pushAnimator()
        }
        
        if operation == .pop, let vc = fromVC as? AKBaseViewController {
            return vc.popAnimator()
        }
        
        return nil
    }
    
    override public var preferredStatusBarStyle: UIStatusBarStyle {
        switch statusBarStyle {
        case .dark: return .default
        case .light: return .lightContent
        }
    }
}

