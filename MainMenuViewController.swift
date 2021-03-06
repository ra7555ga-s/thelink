//
//  MainMenuViewController.swift
//  TheLink
//
//  Created by Raquel on 2020-05-02.
//  Copyright © 2020 TheLink. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController {

    @IBOutlet weak var readIcon: UIImageView!
    @IBOutlet weak var trendIcon: UIImageView!
    @IBOutlet weak var voteIcon: UIImageView!
    
    @IBOutlet weak var linkIcon: UIImageView!
    override func viewDidLoad() {
          super.viewDidLoad()

    linkIcon.image = (UIImage(named: "link")!.withRenderingMode(.alwaysTemplate))

    linkIcon.tintColor = hexStringToUIColor(hex: "b5b5b5")
        
    readIcon.image = (UIImage(named: "info")!.withRenderingMode(.alwaysTemplate))
    
    readIcon.tintColor = hexStringToUIColor(hex: "476388")
    
    trendIcon.image = (UIImage(named: "stats")!.withRenderingMode(.alwaysTemplate))

    trendIcon.tintColor = hexStringToUIColor(hex: "637993")

    voteIcon.image = (UIImage(named: "vote")!.withRenderingMode(.alwaysTemplate))

    voteIcon.tintColor = hexStringToUIColor(hex: "a1afc0")

        // Do any additional setup after loading the view.
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
