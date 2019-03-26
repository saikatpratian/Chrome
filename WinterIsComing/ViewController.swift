//
//  ViewController.swift
//  WinterIsComing
//
//  Created by Apple on 26/03/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageViewChrome: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.imageViewChrome.image = UIImage(named: infoForKey("a")!)
        
        #if PRODUCTION
        print("Production")
        #elseif DEVELOPMENT
        print("Development")
        #else
        print("Test")
        #endif
        
    }
    
    func infoForKey(_ key: String) -> String? {
        return (Bundle.main.infoDictionary?[key] as? String)?
            .replacingOccurrences(of: "\\", with: "")
    }


}

