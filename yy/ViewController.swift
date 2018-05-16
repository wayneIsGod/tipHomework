//
//  ViewController.swift
//  yy
//
//  Created by User09 on 2018/5/16.
//  Copyright © 2018年 User09. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var money: UITextField!
    @IBOutlet weak var far: UITextField!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var smile: UIImageView!
    @IBAction func s_money(_ sender: UITextField) {
        view.endEditing(true)
    }
    @IBAction func end_jp(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    var gradientLayer: CAGradientLayer!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        createGradientLayer()
    }
    @IBOutlet var color: UIView!
    func createGradientLayer() {
        gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = self.view.bounds
        
        gradientLayer.colors = [UIColor.yellow.cgColor, UIColor(displayP3Red: 0.29, green:0.93, blue: 1.0, alpha: 1).cgColor]
        gradientLayer.locations = [0.0, 0.35]
        self.color.layer.addSublayer(gradientLayer)
    }
    @IBAction func cul(_ sender: Any) {
        if var moneys = money.text,var fars=far.text,var end_money = Double(moneys),var end_far = Double(fars)
        {
            let ans = end_money * end_far / 100
            if  ans < end_money * 0.5
            {
                smile.image = UIImage(named: "氣臉")
            }
            else
            {
                smile.image = UIImage(named: "笑臉")
            }
            total.text = "\(ans)"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

