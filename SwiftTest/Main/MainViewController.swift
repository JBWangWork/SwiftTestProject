//
//  MainViewController.swift
//  SwiftTest
//
//  Created by Jiabin wang on 2018/7/17.
//  Copyright © 2018年 Jiabin wang. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.addChildVC(childName: "Home")
        self.addChildVC(childName: "Profile")
    }
    
    private func addChildVC(childName: String) {
        let childVC = UIStoryboard(name: childName, bundle: nil).instantiateInitialViewController()!
        addChildViewController(childVC)
    }

}
