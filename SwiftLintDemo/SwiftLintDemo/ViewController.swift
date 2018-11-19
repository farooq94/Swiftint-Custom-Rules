//
//  ViewController.swift
//  SwiftLintDemo
//
//  Created by Invision-MacBookPro-shayan on 08/11/2018.
//  Copyright © 2018 Invision-MacBookPro-F011. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bottomView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func awa() -> Int {
        if 5 > 6 {
            print("asdasd")
            return 5*6*7-7
        } else {
            print("asdasdas")
            return 5+6+7-7
        }
    }
}
