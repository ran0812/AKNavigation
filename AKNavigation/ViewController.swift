//
//  ViewController.swift
//  AKNavigation
//
//  Created by arkin on 27/03/2017.
//  Copyright © 2017 arkin. All rights reserved.
//

import UIKit

class ViewController: AKBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var logLabel: UILabel!
 
    @IBAction func _setNavigationTitle(_ sender: Any) {
        navTitle = "Hello"
    }
    
    @IBAction func _setNavigationTitleColor(_ sender: Any) {
        navTitleColor = .green
    }

    @IBAction func _setNavigationBarBackgroundColor(_ sender: Any) {
        navBarBackgroundColor = .orange
    }

    @IBAction func _setRightImage(_ sender: Any) {
        
    }

    @IBAction func _setLeftImage(_ sender: Any) {
        
    }

    @IBAction func _setRightTitle(_ sender: Any) {
        rightTitle = "right title"
    }

    @IBAction func _setLeftTitle(_ sender: Any) {
        leftTitle = "left title"
    }

    @IBAction func _setRightItems(_ sender: Any) {
        rightItems = [
            AKNavigationItem("r1", action: {[unowned self] in
            self.log("r1 clicked")
        }),
            AKNavigationItem("r2", action: {[unowned self] in
            self.log("r2 clicked")
        })
        ]
    }


    @IBAction func _setLeftItems(_ sender: Any) {
        leftItems = [
            AKNavigationItem("l1", action: {[unowned self] in
                self.log("l1 clicked")
            }),
            AKNavigationItem("l2", action: {[unowned self] in
                self.log("l2 clicked")
            })
        ]
    }


    @IBAction func _setRightColor(_ sender: Any) {
        rightButtonColor = .red
    }

    @IBAction func _setLeftColor(_ sender: Any) {
        leftButtonColor = .red
    }
    
    @IBAction func _pushNewPage(_ sender: Any) {
        navigationController?.pushViewController(ViewController(), animated: true)
    }
    
    func log(_ msg: String) {
        logLabel.text = msg
    }
}
