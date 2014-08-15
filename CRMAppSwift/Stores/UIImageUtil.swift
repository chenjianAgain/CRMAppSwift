//
//  UIImageUtil.swift
//  CRMManagerSwift
//
//  Created by joseph on 8/15/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

import UIKit

class UIImageUtil: NSObject {
    class func imageWithIndex(index: Int) -> UIImage {
        let tabItems = ["Tab_Bar_Item_0": "main_ico_footer_chance_pressed",
                        "Tab_Bar_Item_1": "main_ico_footer_client_pressed",
                        "Tab_Bar_Item_2": "main_ico_footer_product_pressed",
                        "Tab_Bar_Item_3": "maini_ico_footer_setting_pressed"];
        var key = "Tab_Bar_Item_" + String(index)
        return UIImage(named: tabItems[key]);
    }
}
