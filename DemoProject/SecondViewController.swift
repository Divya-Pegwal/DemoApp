//
//  SecondViewController.swift
//  DemoProject


import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var ContentView: UIView!
    @IBOutlet weak var continueBtn: UIButton!
    @IBOutlet weak var ijmageVuew: UIImageView!
    var count = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       self.navigationController?.isNavigationBarHidden = true
        ContentView.roundCorner([.allCorners], radius: 5)
        ijmageVuew.roundCorner([.topLeft,.topRight], radius: 5)
        continueBtn.layer.cornerRadius = 5
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ContinueBtnAction(_ sender: Any) {
        _ = UIStoryboard(name: "Main", bundle: nil)
               let viewController =  self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
               viewController.num = count
               self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func CheckCount(){
        switch count {
        case 0:
        count = 1
        case 1:
        count = 2
        case 2:
        count = 3
        case 3:
        count = 1
        default:
            count = 0
        }
    }
    
    @IBAction func CloseBtnAction(_ sender: Any) {
        CheckCount()
        _ = UIStoryboard(name: "Main", bundle: nil)
        let viewController =  self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        viewController.numCount = count
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
