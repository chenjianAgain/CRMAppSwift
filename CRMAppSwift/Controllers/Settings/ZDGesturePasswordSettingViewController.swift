//
//  ZDGesturePasswordSettingViewController.swift
//  CRMAppSwift
//
//  Created by joseph on 8/15/14.
//
//

import UIKit

class ZDGesturePasswordSettingViewController: ZDBaseGestureViewController {

    override func alertViewButtonPressed() {
        self.navigationController.popViewControllerAnimated(true)
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
