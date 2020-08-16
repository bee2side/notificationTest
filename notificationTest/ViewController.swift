//
//  ViewController.swift
//  notificationTest
//
//  Created by Doris on 2020/08/16.
//  Copyright © 2020 kakao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func postBtnTapped(_ sender: Any) {
        NotificationCenter.default.post(
            name: NSNotification.Name(rawValue: "PostButton"),
            object: nil)
    }

}

