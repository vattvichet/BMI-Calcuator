

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        let height = String(format: "%.2f", sender.value)
        
        heightLabel.text = "\(height)m"
//        heightLabel.text = UIColor.green
    }
    
    @IBAction func wieghtSliderChanged(_ sender: UISlider) {
        
        let weight = String(format: "%.0f", sender.value)
        // or Int(sender.value)
        
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = weight / (height * height)
        
        let secondVC = SecondViewController() // It is for the second screen display
        
        secondVC.bmiValue = String(format: "%.1f", bmi) // We address the secondVC to display the bmi value
        
        self.present(secondVC, animated: true, completion: nil) //Use it to show the second screenView(it pop up)
        
    }
    
}

