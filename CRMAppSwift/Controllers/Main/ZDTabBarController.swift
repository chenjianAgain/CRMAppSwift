//
//  ZDTabBarController.swift
//  CRMManagerSwift
//
//  Created by joseph on 8/15/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ZDTabBarController: UITabBarController {
    var flag: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        

        for (var i = 0; i < self.tabBar.items.count; i++) {
            var barItem = self.tabBar.items[i] as UITabBarItem
            barItem.selectedImage = UIImageUtil.imageWithIndex(i)
        }
    }
    
    func enterForeground() {
        self.presentToGestureValidateViewController();
    }
    
    func presentToGestureValidateViewController() {
        var gesturePasswordValidateViewController = self.storyboard.instantiateViewControllerWithIdentifier("ZDGesturePasswordValidateViewController") as ZDGesturePasswordValidateViewController
        gesturePasswordValidateViewController.gestureValue = "输入"
        gesturePasswordValidateViewController.passwordGestureView.state = SSFPasswordGestureViewStateCheck
        self.presentViewController(gesturePasswordValidateViewController, animated: false, completion: nil)
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        NSNotificationCenter.defaultCenter().addObserver(self, selector: "enterForeground", name: "UIApplicationWillEnterForegroundNotification", object: UIApplication.sharedApplication())

        var gesturePassword: AnyObject! = NSUserDefaults.standardUserDefaults().objectForKey("secondUserGesturePassword")
        if gesturePassword == nil {
            // 从未设置过手势密码
            var vc = self.storyboard.instantiateViewControllerWithIdentifier("ZDGesturePasswordFirstSetViewController") as ZDGesturePasswordFirstSetViewController
            vc.gestureValue = "设置"
            self.presentViewController(vc, animated: false, completion: nil)
        } else {
            
        }
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
