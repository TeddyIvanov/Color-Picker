//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Teodor Ivanov on 11/14/17.
//  Copyright © 2017 Teodor Ivanov. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var colorPickerView: UIPickerView!
    
    //Red, Orange, Yellow, Green, Blue and Purple.
    @IBOutlet weak var cololLabel: UILabel!
    let colors: [(color: UIColor, name: String)] = [(.red, "Red"), (.orange, "Orange"), (.yellow, "Yellow"), (.green, "Green"), (.blue, "Blue"), (.purple, "Purple")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = colors[0].color
        cololLabel.text = colors[0].name
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.view.backgroundColor = colors[row].color
        self.cololLabel.text = colors[row].name
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
