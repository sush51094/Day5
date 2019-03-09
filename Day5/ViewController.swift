//
//  ViewController.swift
//  Day5
//
//  Created by MacStudent on 2019-03-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var picker: UIPickerView!
    
    let countrylist = ["India","Australia","America","canada","qatar","france","germany","Newzeland","Japan","china"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.picker.delegate = self
        self.picker.dataSource = self
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func birthDatePicker(_ sender: UIDatePicker) {
        
        
        print(sender.date)
        
       // print(sender.locale?.currencyCode)
        
        
        
        
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
      return self.countrylist.count
        
        
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
       // return "Comp: \(component)-Row :\(row)"
        
        return self.countrylist[row]
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
    
    
}

