//
//  YourOpinionViewController.swift
//  TheLink
//
//  Created by Raquel on 2020-05-02.
//  Copyright © 2020 TheLink. All rights reserved.
//

import UIKit

class YourOpinionViewController: UIViewController {

    @IBOutlet weak var policy6Icon: UIImageView!
    @IBOutlet weak var policy5Icon: UIImageView!
    @IBOutlet weak var policy4Icon: UIImageView!
    @IBOutlet weak var policy3Icon: UIImageView!
    @IBOutlet weak var policy2Icon: UIImageView!
    @IBOutlet weak var policy1Icon: UIImageView!
    @IBOutlet weak var linkIcon: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loadOpinionPolicy1()
        loadOpinionPolicy2()
        loadOpinionPolicy3()
        loadOpinionPolicy4()
        loadOpinionPolicy5()
        loadOpinionPolicy6()
        
        
        linkIcon.image = (UIImage(named: "link")!.withRenderingMode(.alwaysTemplate))
        linkIcon.tintColor = hexStringToUIColor(hex: "b5b5b5")
        
    }
    
    func loadOpinionPolicy1 () {
        let defaults = UserDefaults.standard
        if (defaults.integer(forKey: "Policy1opinion") == 1){
            policy1Icon.image = (UIImage(named: "check")!.withRenderingMode(.alwaysTemplate))
            policy1Icon.tintColor = hexStringToUIColor(hex: "476388")
            
        }
        else if(defaults.integer(forKey: "Policy1opinion") == 2){
            policy1Icon.image = (UIImage(named: "neutral")!.withRenderingMode(.alwaysTemplate))
            policy1Icon.tintColor = hexStringToUIColor(hex: "6A6B6D")
        }
        else if (defaults.integer(forKey: "Policy1opinion") == 3){
            policy1Icon.image = (UIImage(named: "cross")!.withRenderingMode(.alwaysTemplate))
            policy1Icon.tintColor = hexStringToUIColor(hex: "A1AFC0")
        }
        else{
            policy1Icon.isHidden = true
        }
        
    }
    
    func loadOpinionPolicy2 () {
        let defaults = UserDefaults.standard
        if (defaults.integer(forKey: "Policy2opinion") == 1){
            policy2Icon.image = (UIImage(named: "check")!.withRenderingMode(.alwaysTemplate))
            policy2Icon.tintColor = hexStringToUIColor(hex: "476388")
            
        }
        else if(defaults.integer(forKey: "Policy2opinion") == 2){
            policy2Icon.image = (UIImage(named: "neutral")!.withRenderingMode(.alwaysTemplate))
            policy2Icon.tintColor = hexStringToUIColor(hex: "6A6B6D")
        }
        else if (defaults.integer(forKey: "Policy2opinion") == 3){
            policy2Icon.image = (UIImage(named: "cross")!.withRenderingMode(.alwaysTemplate))
            policy2Icon.tintColor = hexStringToUIColor(hex: "A1AFC0")
        }
        else{
            policy2Icon.isHidden = true
        }
        
    }
    
    func loadOpinionPolicy3 () {
        let defaults = UserDefaults.standard
        if (defaults.integer(forKey: "Policy3opinion") == 1){
            policy3Icon.image = (UIImage(named: "check")!.withRenderingMode(.alwaysTemplate))
            policy3Icon.tintColor = hexStringToUIColor(hex: "476388")
            
        }
        else if(defaults.integer(forKey: "Policy3opinion") == 2){
            policy3Icon.image = (UIImage(named: "neutral")!.withRenderingMode(.alwaysTemplate))
            policy3Icon.tintColor = hexStringToUIColor(hex: "6A6B6D")
        }
        else if (defaults.integer(forKey: "Policy3opinion") == 3){
            policy3Icon.image = (UIImage(named: "cross")!.withRenderingMode(.alwaysTemplate))
            policy3Icon.tintColor = hexStringToUIColor(hex: "A1AFC0")
        }
        else{
            policy3Icon.isHidden = true
        }
        
    }
    
    func loadOpinionPolicy4 () {
        let defaults = UserDefaults.standard
        if (defaults.integer(forKey: "Policy4opinion") == 1){
            policy4Icon.image = (UIImage(named: "check")!.withRenderingMode(.alwaysTemplate))
            policy4Icon.tintColor = hexStringToUIColor(hex: "476388")
            
        }
        else if(defaults.integer(forKey: "Policy4opinion") == 2){
            policy4Icon.image = (UIImage(named: "neutral")!.withRenderingMode(.alwaysTemplate))
            policy4Icon.tintColor = hexStringToUIColor(hex: "6A6B6D")
        }
        else if (defaults.integer(forKey: "Policy4opinion") == 3){
            policy4Icon.image = (UIImage(named: "cross")!.withRenderingMode(.alwaysTemplate))
            policy4Icon.tintColor = hexStringToUIColor(hex: "A1AFC0")
        }
        else{
            policy4Icon.isHidden = true
        }
        
    }
    
    func loadOpinionPolicy5 () {
        let defaults = UserDefaults.standard
        if (defaults.integer(forKey: "Policy5opinion") == 1){
            policy5Icon.image = (UIImage(named: "check")!.withRenderingMode(.alwaysTemplate))
            policy5Icon.tintColor = hexStringToUIColor(hex: "476388")
            
        }
        else if(defaults.integer(forKey: "Policy5opinion") == 2){
            policy5Icon.image = (UIImage(named: "neutral")!.withRenderingMode(.alwaysTemplate))
            policy5Icon.tintColor = hexStringToUIColor(hex: "6A6B6D")
        }
        else if (defaults.integer(forKey: "Policy5opinion") == 3){
            policy5Icon.image = (UIImage(named: "cross")!.withRenderingMode(.alwaysTemplate))
            policy5Icon.tintColor = hexStringToUIColor(hex: "A1AFC0")
        }
        else{
            policy5Icon.isHidden = true
        }
        
    }
    
    func loadOpinionPolicy6 () {
        let defaults = UserDefaults.standard
        if (defaults.integer(forKey: "Policy6opinion") == 1){
            policy6Icon.image = (UIImage(named: "check")!.withRenderingMode(.alwaysTemplate))
            policy6Icon.tintColor = hexStringToUIColor(hex: "476388")
            
        }
        else if(defaults.integer(forKey: "Policy6opinion") == 2){
            policy6Icon.image = (UIImage(named: "neutral")!.withRenderingMode(.alwaysTemplate))
            policy6Icon.tintColor = hexStringToUIColor(hex: "6A6B6D")
        }
        else if (defaults.integer(forKey: "Policy6opinion") == 3){
            policy6Icon.image = (UIImage(named: "cross")!.withRenderingMode(.alwaysTemplate))
            policy6Icon.tintColor = hexStringToUIColor(hex: "A1AFC0")
        }
        else{
            policy6Icon.isHidden = true
        }
        
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
