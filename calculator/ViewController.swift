//
//  ViewController.swift
//  calculator
//
//  Created by 20141105052 on 16/6/23.
//  Copyright © 2016年 20141105052郭孝宇. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var x: UITextField!
    var flog:Bool=false;
    var flag=0
    var temp=0.0

    @IBAction func one(sender: AnyObject) {
        x.text=x.text!+"1"
    }
    @IBAction func two(sender: AnyObject) {
        x.text=x.text!+"2"
    }
    @IBAction func three(sender: AnyObject) {
        x.text=x.text!+"3"
    }
    @IBAction func four(sender: AnyObject) {
        x.text=x.text!+"4"
    }
    @IBAction func five(sender: AnyObject) {
        x.text=x.text!+"5"
    }
    @IBAction func six(sender: AnyObject) {
        x.text=x.text!+"6"
    }
    @IBAction func seven(sender: AnyObject) {
        x.text=x.text!+"7"
    }
    @IBAction func eight(sender: AnyObject) {
        x.text=x.text!+"8"
    }
    @IBAction func nine(sender: AnyObject) {
        x.text=x.text!+"9"
    }
    @IBAction func zero(sender: AnyObject) {
        x.text=x.text!+"0"
    }




    @IBAction func add(sender: AnyObject) {
        if flag==0{
            temp=(Double)(x.text!)!
            x.text=""
            flag=1
        }
        flag=1
    }
    @IBAction func jian(sender: AnyObject) {
        if flag==0{
            temp=(Double)(x.text!)!
            x.text=""
            flag=2
        }
        flag=2
    }
    @IBAction func mul(sender: AnyObject) {
        if flag==0{
            temp=(Double)(x.text!)!
            x.text=""
            flag=3
        }
        flag=3
        
    }
    @IBAction func chu(sender: AnyObject) {
        if flag==0{
            temp=(Double)(x.text!)!
            x.text=""
            flag=4
        }
        flag=4
    }

    

    @IBAction func calculator(sender: AnyObject) {
        switch flag{
        case 1:
            temp=temp+(Double)(x.text!)!
            x.text="\(temp)"
            break
        case 2:
            temp=temp-(Double)(x.text!)!
            x.text="\(temp)"
            break
        case 3:
            temp=temp*(Double)(x.text!)!
            x.text="\(temp)"
            break
        case 4:
            if (Double)(x.text!)==0{
                let alertView=UIAlertView()
                alertView.title="1"
                alertView.message="0不可做除数"
                alertView.addButtonWithTitle("true")
                alertView.show()
            }
            else{
            temp=temp/(Double)(x.text!)!
            x.text="\(temp)"
            }
            break

        default:
            break
        }
    }
    @IBAction func point(sender: AnyObject) {
        if(flog==false){
            x.text=x.text!+"."
            flog=true;
        }
    }
    @IBAction func clear(sender: AnyObject) {
        temp=0.0
        x.text=""
        flag=0
    }
    @IBAction func min(sender: AnyObject) {
        temp=(Double)(x.text!)!
        temp=(-temp)
        x.text="\(temp)"
    }
    @IBAction func back(sender: AnyObject) {
    }
    @IBAction func dao(sender: AnyObject) {
        temp=(Double)(x.text!)!
        temp=1/temp
        x.text="\(temp)"
    }
    @IBAction func baifen(sender: AnyObject) {
        temp=(Double)(x.text!)!
        temp=temp/100
        x.text="\(temp)"
    }

}

