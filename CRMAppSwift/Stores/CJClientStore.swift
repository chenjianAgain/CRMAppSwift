//
//  CJClientStore.swift
//  CRMAppSwift
//
//  Created by joseph on 8/15/14.
//
//

import UIKit

class CJClientStore: NSObject {
    typealias ErrorHandler = (error: NSError) -> Void
    
    class var sharedInstance:CJClientStore {
        get {
            struct Static {
                static var instance : CJClientStore? = nil
            }
            
            if (Static.instance == nil) {
                Static.instance = CJClientStore()
            }
            
            return Static.instance!
        }
    }
    
    // Sync Login
    func loginWithUserName(username: NSString, andPassword password: NSString) -> Bool{
        return true;
    }
    
    // Async Login
    func loginWithUserName(username: NSString, andPassword password: NSString, closure errorHandler: ErrorHandler){
    }
}
