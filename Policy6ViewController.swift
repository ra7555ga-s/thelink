//
//  Policy6ViewController.swift
//  TheLink
//
//  Created by Raquel on 2020-05-03.
//  Copyright © 2020 TheLink. All rights reserved.
//

import UIKit

class Policy6ViewController: UIViewController {

    @IBOutlet weak var disapproveIcon: UIImageView!
    @IBOutlet weak var approveIcon: UIImageView!
    @IBOutlet weak var neutralIcon: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        approveIcon.image = (UIImage(named: "check")!.withRenderingMode(.alwaysTemplate))
        approveIcon.tintColor = hexStringToUIColor(hex: "476388")
        neutralIcon.image = (UIImage(named: "neutral")!.withRenderingMode(.alwaysTemplate))
        neutralIcon.tintColor = hexStringToUIColor(hex: "6A6B6D")
        disapproveIcon.image = (UIImage(named: "cross")!.withRenderingMode(.alwaysTemplate))
        disapproveIcon.tintColor = hexStringToUIColor(hex: "A1AFC0")
    }
    

    @IBAction func approveButton(_ sender: UIButton) {
    let defaults = UserDefaults.standard
    defaults.set(sender.tag, forKey: "Policy5opinion")
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
