//
//  ViewController.swift
//  RandomClass
//
//  Created by AlDanah Aldohayan on 05/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    let label1 = UILabel(frame: CGRect(x: 50, y: 300, width: 250, height: 40))
    let label2 = UILabel(frame: CGRect(x: 50, y: 350, width: 250, height: 40))
    let button1 = UIButton(frame: CGRect(x: 50, y: 400, width: 250, height: 40))
    let label3 = UILabel(frame: CGRect(x: 50, y: 500, width: 250, height: 40))
    let button2 = UIButton(frame: CGRect(x: 50, y: 550, width: 250, height: 40))
    let num = UISegmentedControl(frame: CGRect(x: 50, y: 300, width: 250, height: 40))
        
    
    
    let arr1 = ["Aldanah Saud"]
    
    @objc func operationn() {
        label1.text = arr1.randomElement()
        label2.text = arr1.randomElement()
    }
    @objc func threeGoups() {
        label1.text = arr1.randomElement()
        label2.text = arr1.randomElement()
        label3.text = arr1.randomElement()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        button1.setTitle("Let's Go Tow", for: .normal)
        button1.backgroundColor = .systemPink
        button1.addTarget(self, action: #selector(operationn), for: .touchUpInside)
        
        
        label1.text = "Student A"
        label2.text = "Student B"
        label3.text = "Student C(Optional)"
        
        
        button2.setTitle("Let's Go Three", for: .normal)
        button2.backgroundColor = .blue
        button2.addTarget(self, action: #selector(threeGoups), for: .touchUpInside)
        
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(button1)
        view.addSubview(label3)
        view.addSubview(button2)
        
        
    }
}
