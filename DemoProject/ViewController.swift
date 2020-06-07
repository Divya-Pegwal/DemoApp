//
//  ViewController.swift
//  DemoProject
//

import UIKit

class ViewController: UIViewController {

    var numCount = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.isNavigationBarHidden = true
    }
    func CheckCount(){
        switch numCount {
        case 0:
        numCount = 1
        case 1:
        numCount = 2
        case 2:
        numCount = 3
        case 3:
        numCount = 1
        default:
            numCount = 0
        }
    }
    @IBAction func StartAction(_ sender: Any) {
        _ = UIStoryboard(name: "Main", bundle: nil)
        let viewController =  self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        CheckCount()
        viewController.count = numCount
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}

