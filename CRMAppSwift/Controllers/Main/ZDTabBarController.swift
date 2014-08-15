//
//  ZDTabBarController.swift
//  CRMManagerSwift
//
//  Created by joseph on 8/15/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ZDTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        for (var i = 0; i < self.tabBar.items.count; i++) {
            var barItem = self.tabBar.items[i] as UITabBarItem
            barItem.selectedImage = UIImageUtil.imageWithIndex(i)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
