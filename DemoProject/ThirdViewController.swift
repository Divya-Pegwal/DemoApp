//
//  ThirdViewController.swift
//  DemoProject
//


import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var ContentView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageViewHeight: NSLayoutConstraint!
    @IBOutlet weak var heaadingHeight: NSLayoutConstraint!
    @IBOutlet weak var dicsreptionHeight: NSLayoutConstraint!
    @IBOutlet weak var imageView: UIImageView!
    var num = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CheckNum ()
        MakeRoundCorner ()
        self.navigationController?.isNavigationBarHidden = true
        ContentView.layer.cornerRadius = 5
        // Do any additional setup after loading the view.
    }
    func MakeRoundCorner (){
        imageView.roundCorner([.topRight,.topLeft], radius: 5)
        ContentView.roundCorner(.allCorners, radius: 5)
    }
    func CheckNum (){
        switch num {
        case 1:
        imageViewHeight.constant = 0
        heaadingHeight.constant = 21
        dicsreptionHeight.constant = 143
        self.scrollView.reloadInputViews()
        case 2:
        imageViewHeight.constant = 183
        heaadingHeight.constant = 21
        dicsreptionHeight.constant = 0
        self.scrollView.reloadInputViews()
        case 3:
        imageViewHeight.constant = 0
        heaadingHeight.constant = 21
        dicsreptionHeight.constant = 0
        self.scrollView.reloadInputViews()
        default:
            imageViewHeight.constant = 183
            heaadingHeight.constant = 21
            dicsreptionHeight.constant = 143
            scrollView.reloadInputViews()
        }
    }

 func CheckCount(){
     switch num {
     case 0:
     num = 1
     case 1:
     num = 2
     case 2:
     num = 3
     case 3:
     num = 1
     default:
         num = 0
     }
 }

     @IBAction func RestartBtnAction(_ sender: Any) {
        _ = UIStoryboard(name: "Main", bundle: nil)
               let viewController =  self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        CheckCount()
               viewController.numCount = num
               self.navigationController?.pushViewController(viewController, animated: true)
     }
    
}
