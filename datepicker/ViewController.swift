//
//  ViewController.swift
//  datepicker
//
//  Created by 金陳廷 on 2019/6/11.
//  Copyright © 2019 notu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datepicker: UIDatePicker!
    @IBOutlet weak var images: UIImageView!
    @IBOutlet weak var sliders: UISlider!
    @IBOutlet weak var years: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        sliders.value.round()
        images.image = UIImage(named: String(Int(sliders.value).description)+".jepg")
        // Do any additional setup after loading the view.
    }

    @IBAction func changeslider(_ sender: Any) {
        sliders.value.round()

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd"
        let dateString = String(2009+Int(sliders.value))+"/08/07"
        let date = dateFormatter.date(from: dateString)
        datepicker.date=date!

        

    years.text = String(Int(sliders.value)) + "歲"
        
        
        images.image = UIImage(named: String(Int(sliders.value).description)+".jepg")
    }
    
}

