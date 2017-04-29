//
//  RightViewController.swift
//  SWArabic
//
//  Created by Patrick BODET on 30/08/2016.
//  Copyright © 2016 iDevelopper. All rights reserved.
//

import UIKit

class RightViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

  
    @IBAction func languageAction(_ sender: UIButton) {
        
        var transition: UIViewAnimationOptions = .transitionFlipFromLeft
//        if L102Language.currentAppleLanguage() == "en" {
//            L102Language.setAppleLAnguageTo(lang: "ar")
//            UIView.appearance().semanticContentAttribute = .forceRightToLeft
//        } else {
//            L102Language.setAppleLAnguageTo(lang: "en")
//            transition = .transitionFlipFromRight
//            UIView.appearance().semanticContentAttribute = .forceLeftToRight
//        }
//        let rootviewcontroller: UIWindow = ((UIApplication.shared.delegate?.window)!)!
//        rootviewcontroller.rootViewController = self.storyboard!.instantiateViewController(withIdentifier: "rootnav")
//        let mainwindow = (UIApplication.shared.delegate?.window!)!
//        mainwindow.backgroundColor = UIColor(hue: 0.6477, saturation: 0.6314, brightness: 0.6077, alpha: 0.8)
//        UIView.transition(with: mainwindow, duration: 0.55001, options: transition, animations: { () -> Void in
//        }) { (finished) -> Void in
//            
//        }
        
        let revealController = self.storyboard?.instantiateViewController(withIdentifier: "revealView") as? SWRevealViewController
        let rearController = self.storyboard?.instantiateViewController(withIdentifier: "RearTableViewController")
        let frontViewController = self.storyboard?.instantiateViewController(withIdentifier: "FrontViewController")
        let navigationController = UINavigationController.init(rootViewController: frontViewController!)
        revealController?.setFront(navigationController, animated: true)
        
        if L102Language.currentAppleLanguage() == "en" {
            L102Language.setAppleLAnguageTo(lang: "ar")
            UIView.appearance().semanticContentAttribute = .forceRightToLeft
            revealController?.setRear(rearController, animated: true)
        } else {
            L102Language.setAppleLAnguageTo(lang: "en")
            transition = .transitionFlipFromRight
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
            revealController?.setRight(rearController, animated: true)
        }
//        let rootviewcontroller: UIWindow = ((UIApplication.shared.delegate?.window)!)!
//        rootviewcontroller.rootViewController = self.storyboard!.instantiateViewController(withIdentifier: "rootnav")
//        let mainwindow = (UIApplication.shared.delegate?.window!)!
//        mainwindow.backgroundColor = UIColor(hue: 0.6477, saturation: 0.6314, brightness: 0.6077, alpha: 0.8)
//        UIView.transition(with: mainwindow, duration: 0.55001, options: transition, animations: { () -> Void in
//        }) { (finished) -> Void in
//            
//        }
        self.present(revealController!, animated: true, completion: nil)

    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
