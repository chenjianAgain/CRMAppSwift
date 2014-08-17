//
//  ZDGesturePasswordViewController.swift
//  CRMAppSwift
//
//  Created by joseph on 8/15/14.
//
//

import UIKit

class ZDGesturePasswordValidateViewController: ZDBaseGestureViewController {

    /*      
    - (void)passwordGestureViewFinishCheckPassword:(SSFPasswordGestureView *)passwordView
    {
    [self.delegate gesturePasswordViewControllerDidFinish:self];
    }
    
    - (void)passwordGestureViewCheckPasswordWrong:(SSFPasswordGestureView *)passwordView
    {
    self.alertLabel.text = @"手势密码错误,请重试";
    self.alertLabel.textColor = [UIColor colorWithRed:239/255.0 green:97/255.0 blue:97/255.0 alpha:1.0];
    }
    */

    func passwordGestureViewFinishCheckPassword(passwordView: SSFPasswordGestureView!) {
        self.presentingViewController.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func passwordGestureViewCheckPasswordWrong(passwordView: SSFPasswordGestureView!) {
        self.alertLabel!.text = "手势密码错误,请重试";
    }
}
