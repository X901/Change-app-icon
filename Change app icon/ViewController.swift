//
//  ViewController.swift
//  Change app icon
//
//  Created by X901 on 4/16/17.
//  Copyright © 2017 Basil Baragabah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // noticed there is some change in Info.plist 
    // you need to add this line "Icon files (iOS 5)" and every thing below it before do anything !!
    
    //then you need to add default icon in "Assets.xcassets" and alternative goes to folder outside "Assets.xcassets"

  
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func indexChanged(_ sender: UISegmentedControl) {
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            
            // nil mean  Default icon ,  icon that in "Assets.xcassets"
            UIApplication.shared.setAlternateIconName(nil)
            break

        case 1:
            // "icon 1" mean the name of alternative icon image  ,it should be same name as in CFBundleIconFiles on info.plist !
            
            UIApplication.shared.setAlternateIconName("icon1")
            break

        case 2:
            UIApplication.shared.setAlternateIconName("icon2")

            break

            
        default:
            break
        }
        
    }
    
    
  
            



}

