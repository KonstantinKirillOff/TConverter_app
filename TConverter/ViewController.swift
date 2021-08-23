//
//  ViewController.swift
//  TConverter
//
//  Created by Константин Кириллов on 26.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var forengateLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    

    @IBAction func sliderChanged(_ sender: UISlider) {
        let tempretureCelsius = Int(round(sender.value))
        celsiusLabel.text = "\(tempretureCelsius)ºC"
        
        let fahrenheitTemperature = Int(round((sender.value * 9 / 5) + 32))
        forengateLabel.text = "\(fahrenheitTemperature)ºF"
    }
    
}

