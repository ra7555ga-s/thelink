//
//  Policy4CurrentViewController.swift
//  TheLink
//
//  Created by Raquel on 2020-05-03.
//  Copyright © 2020 TheLink. All rights reserved.
//

import UIKit

class Policy4CurrentViewController: UIViewController {

    
    @IBOutlet weak var linkIcon: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        linkIcon.image = (UIImage(named: "link")!.withRenderingMode(.alwaysTemplate))
            linkIcon.tintColor = hexStringToUIColor(hex: "b5b5b5")
        }
        
    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }

}
