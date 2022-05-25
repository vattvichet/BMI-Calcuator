
import UIKit

class SecondViewController : UIViewController {
    
    var bmiValue = "0" // It will be used at the viewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.brown
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 10, y: 0, width: 100, height: 50) // the more the height increase, the more it will go down. and also the weight.
        view.addSubview(label)

    }
}


