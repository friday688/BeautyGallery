//
//  ViewController.swift
//  BeautyGallery
//
//  Created by yzw on 16/7/17.
//  Copyright © 2016年 yzw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var beautyPicker: UIPickerView!
    
    let beauties = ["范冰冰","李冰冰","王菲","杨幂","周迅"]
    let strName = ["fangbingbing","libingbing","wangfei","yangmi","zhouxu"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        beautyPicker.dataSource = self
        beautyPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "gogallery" {
            let index = beautyPicker.selectedRowInComponent(0)
            let imageName:String? = strName[index]
            let ChinaName:String = beauties[index]
            let vc = segue.destinationViewController as! GalleryViewController
            vc.imageName = imageName
            vc.title = ChinaName
        }
    }

    @IBAction func close(segue: UIStoryboardSegue){
        print("closed")
    }
}

