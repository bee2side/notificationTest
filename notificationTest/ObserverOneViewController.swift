//
//  ObserverOneViewController.swift
//  notificationTest
//
//  Created by Doris on 2020/08/16.
//  Copyright © 2020 kakao. All rights reserved.
//

import UIKit

class ObserverOneViewController: UIViewController {
    @IBOutlet weak var hiddenLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,
            selector: #selector(showLabel),
            name: NSNotification.Name(rawValue: "PostButton"),
            object: nil)
    }
    
    @objc func showLabel(){
        hiddenLabel.layer.isHidden = false
    }
}
