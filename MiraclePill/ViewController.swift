//
//  ViewController.swift
//  MiraclePill
//
//  Created by anthony gibson on 09/07/2017.
//  Copyright © 2017 BusyDad. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var countyPicker: UIPickerView!
    @IBOutlet weak var countyPickerBtn: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTextBox: UITextField!
    @IBOutlet weak var postcodeLabel: UILabel!
    @IBOutlet weak var postcodeTextBx: UITextField!
    @IBOutlet weak var successImage: UIImageView!
    
    let counties = ["Aberdeenshire","Angus","Argyll","Avon","Ayrshire","Banffshire","Beds","Berks","Berwickshire","Bucks","Caithness","Cambs","Cheshire","Clackmannanshire","Cleveland","Co Antrim","Co Armagh","Co Down","Co Durham","Co Fermanagh","Co Londonderry","Co Tyrone","Cornwall","Cumbria","Derbys","Devon","Dorset","Dumfriesshire","Dunbartonshire","Dyfed","E Sussex","East Lothian","Essex","Fife","Glamorgan Mid","Glamorgan South","Glamorgan West","Glos","Gwent","Gwynedd","Hants","Herefordshire","Herts","Inverness-shire","Isle of Arran","Isle of Barra","Isle of Benbecula","Isle of Bute","Isle of Canna","Isle of Coll","Isle of Colonsay","Isle of Cumbrae","Isle of Eigg","Isle of Gigha","Isle of Harris","Isle of Iona","Isle of Islay","Isle of Jura","Isle of Lewis","Isle of Mull","Isle of NorthUist","Isle of Rhum","Isle of Scalpay","Isle of Skye","Isle of SouthUist","Isle of Tiree","Isle of Wight","Kent","Kincardineshire","Kinross-shire","Kirkcudbrightshire","Lanarkshire","Lancs","Leics","Lincs","London","Merseyside","Middx","Midlothian","Morayshire","NHumbs","NYorks","Nairnshire","Norfolk","Northants","Northd","Notts","Orkney","Oxon","Peeblesshire","Perthshire","Powys","Renfrewshire","Ross-shire","Roxburghshire","S Humbs","S Yorks","Salop","Selkirkshire","Shetland","Somerset","Staffs","Stirlingshire","Suffolk","Surrey","Sutherland","Tyne & Wear","W Mids","W Sussex","W Yorks","Warks","West Lothian","Wigtownshire","Wilts","Worcs"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        countyPicker.dataSource = self
        countyPicker.delegate = self
        
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
        
        
    }

    @IBAction func countyButtonPressed(_ sender: Any) {
        countyPicker.isHidden = false
        postcodeLabel.isHidden = true
        postcodeTextBx.isHidden = true
        countryLabel.isHidden = true
        countryTextBox.isHidden = true
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return counties.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return counties[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    countyPickerBtn.setTitle(counties[row], for: UIControlState.normal)
        countyPicker.isHidden = true
        postcodeLabel.isHidden = false
        postcodeTextBx.isHidden = false
        countryLabel.isHidden = false
        countryTextBox.isHidden = false
    }
    @IBAction func buyNowBtn(_ sender: Any) {
        successImage.isHidden = false
    }
    
}

