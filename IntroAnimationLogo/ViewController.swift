//
//  ViewController.swift
//  IntroAnimationLogo
//
//  Created by Mauricio Lucon on 4/16/15.
//  Copyright (c) 2015 AppFact. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var IntroViewProp: IntroView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Iniciando a animação
        IntroViewProp.addPlayAnimation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    

    override func prefersStatusBarHidden() -> Bool {
       
        return true
        
    }
}

