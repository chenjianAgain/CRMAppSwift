//
//  ZDGesturePasswordSettingViewController.swift
//  CRMAppSwift
//
//  Created by joseph on 8/15/14.
//
//

import UIKit

class ZDGesturePasswordSettingViewController: UIViewController, SSFPasswordGestureViewDelegate, UIAlertViewDelegate {

    @IBOutlet var alertLabel: UILabel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureView()
    }
    
    func configureView() {
        var passwordGestureView = SSFPasswordGestureView.instancePasswordView()
        passwordGestureView.delegate = self
        passwordGestureView.state = SSFPasswordGestureViewStateWillFirstDraw
        passwordGestureView.center = CGPoint(x: self.view.center.x, y: self.view.center.y + 50)
        self.view.addSubview(passwordGestureView)
        self.alertLabel!.text = "请绘制解锁图案"
    }

    func passwordGestureViewFinishFirstTimePassword(passwordView: SSFPasswordGestureView!) {
        self.alertLabel!.text = "请再次绘制解锁图案"
    }
    
    func passwordGestureViewFinishSecondTimePassword(passwordView: SSFPasswordGestureView!, andPassword password: String!) {
        //保存到数据库

        var alertView = UIAlertView(title: "手势密码修改", message: "修改手势密码成功！", delegate: self, cancelButtonTitle: "OK")
        alertView.show()
    }
    
    func passwordGestureViewFinishWrongPassword(passwordView: SSFPasswordGestureView!) {
        self.alertLabel!.text = "两次绘制不相同,请重新绘制第二次图案"
    }
    
    func alertView(alertView: UIAlertView!, clickedButtonAtIndex buttonIndex: Int) {
        if buttonIndex == alertView.cancelButtonIndex {
            self.navigationController.popViewControllerAnimated(true)
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
