//
//  KoreanViewController.swift
//  BeautyGallery
//
//  Created by yzw on 16/7/17.
//  Copyright © 2016年 yzw. All rights reserved.
//

import UIKit
import Social


class KoreanViewController: UIViewController {
    
    @IBOutlet weak var beautyImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func facebookTapped(sender: AnyObject) {
        var controller : SLComposeViewController = SLComposeViewController(forServiceType:SLServiceTypeFacebook)
        controller.setInitialText("一起来玩女神画廊app吧！")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    @IBAction func twinterTapped(sender: AnyObject) {
        var controller : SLComposeViewController = SLComposeViewController(forServiceType:SLServiceTypeTwitter)
        controller.setInitialText("一起来玩女神画廊app吧！")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    @IBAction func weiboTapped(sender: AnyObject) {
        var controller : SLComposeViewController = SLComposeViewController(forServiceType:SLServiceTypeSinaWeibo)
        controller.setInitialText("一起来玩女神画廊app吧！")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
}
