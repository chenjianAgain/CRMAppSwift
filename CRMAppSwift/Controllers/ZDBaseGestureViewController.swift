//
//  BaseGestureViewController.swift
//  CRMAppSwift
//
//  Created by joseph on 8/15/14.
//
//

import UIKit

class ZDBaseGestureViewController: UIViewController, SSFPasswordGestureViewDelegate, UIAlertViewDelegate {

    @IBOutlet var alertLabel: UILabel?
    
    var passwordGestureViewPrivate: SSFPasswordGestureView?
    var passwordGestureView: SSFPasswordGestureView {
        get {
            if passwordGestureViewPrivate == nil {
                passwordGestureViewPrivate = SSFPasswordGestureView.instancePasswordView()
                passwordGestureViewPrivate!.delegate = self
                passwordGestureViewPrivate!.state = SSFPasswordGestureViewStateWillFirstDraw
                passwordGestureViewPrivate!.center = CGPoint(x: self.view.center.x, y: self.view.center.y + 50)
                passwordGestureViewPrivate!.gesturePassword = NSUserDefaults.standardUserDefaults().stringForKey("secondUserGesturePassword")
            }
            return self.passwordGestureViewPrivate!
        }
    }
    
    var gestureValuePrivate = "修改"
    var gestureValue: NSString {
        set {
            self.gestureValuePrivate = newValue
        }
        get {
            return self.gestureValuePrivate
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureView()
    }
    
    func configureView() {

        self.view.addSubview(self.passwordGestureView)
        self.alertLabel!.text = "请绘制解锁图案"
    }
    
    func passwordGestureViewFinishFirstTimePassword(passwordView: SSFPasswordGestureView!) {
        self.alertLabel!.text = "请再次绘制解锁图案"
    }
    
    func passwordGestureViewFinishWrongPassword(passwordView: SSFPasswordGestureView!) {
        self.alertLabel!.text = "两次绘制不相同,请重新绘制第二次图案"
    }
    
    func passwordGestureViewFinishSecondTimePassword(passwordView: SSFPasswordGestureView!, andPassword password: String!) {
        //保存到数据库
        
        var alertView = UIAlertView(title: "手势密码" + self.gestureValuePrivate, message: "手势密码" + self.gestureValuePrivate + "成功！", delegate: self, cancelButtonTitle: "OK")
        alertView.show()
    }
    
    func alertView(alertView: UIAlertView!, clickedButtonAtIndex buttonIndex: Int) {
        if buttonIndex == alertView.cancelButtonIndex {
            self.alertViewButtonPressed()
        }
    }

    func alertViewButtonPressed () {
        self.presentingViewController.dismissViewControllerAnimated(true, completion: nil)
    }
    

}
