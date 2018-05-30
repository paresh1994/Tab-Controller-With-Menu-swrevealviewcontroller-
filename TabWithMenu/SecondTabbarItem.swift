//
//  SecondTabbarItem.swift
//  TabWithMenu
//
//  Created by iDeveloper2 on 09/05/17.
//  Copyright © 2017 iDeveloper. All rights reserved.
//

import UIKit

class SecondTabbarItem: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let menuBtn = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: nil)
        self.navigationItem.leftBarButtonItem = menuBtn
        
        if revealViewController() != nil {
            menuBtn.target = revealViewController()
            menuBtn.action = #selector(SWRevealViewController.revealToggle(_:))
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            self.revealViewController().rearViewRevealWidth = 260.0
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
