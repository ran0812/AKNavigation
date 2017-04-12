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
        weak var wearSelf = self
        interactivePopGestureRecognizer?.delegate = wearSelf
        delegate = wearSelf
    }
    
    override public func pushViewController(_ viewController: UIViewController, animated: Bool) {
        interactivePopGestureRecognizer?.isEnabled = false
        super.pushViewController(viewController, animated: animated)
    }
    
    public func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        interactivePopGestureRecognizer?.isEnabled = viewControllers.count > 1
    }
    
    override public var preferredStatusBarStyle: UIStatusBarStyle {
        switch statusBarStyle {
        case .dark: return .default
        case .light: return .lightContent
        }
    }
}

