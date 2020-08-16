//
//  ObserverTwoViewController.swift
//  notificationTest
//
//  Created by Doris on 2020/08/16.
//  Copyright © 2020 kakao. All rights reserved.
//

import UIKit

class ObserverTwoViewController: UIViewController {
    @IBOutlet weak var willBeHiddenLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,
            selector: #selector(hideLabel),
            name: NSNotification.Name(rawValue: "PostButton"),
            object: nil)
    }
    
    @objc func hideLabel(){
        willBeHiddenLabel.layer.isHidden = true
    }

}
