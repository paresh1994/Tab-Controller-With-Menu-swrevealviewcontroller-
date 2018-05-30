//
//  ViewController.swift
//  TabWithMenu
//
//  Created by iDeveloper2 on 08/05/17.
//  Copyright © 2017 iDeveloper. All rights reserved.
//

import UIKit

class ViewControllerFirst: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.title = "Other"
    }

}

