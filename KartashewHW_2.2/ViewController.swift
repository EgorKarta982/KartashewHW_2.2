
// поправить округление до 1.00
//
//отправить хоть что то что бы проверить как работает Гитхаб
// сделать первую домашку
//доедалать эту даже после срока сдачи самому
//добавить две вьюшки, закрасить их в цвета и поставить прозрачность



import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewScreen: UIView!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    @IBOutlet var textSliderRed: UILabel!
    @IBOutlet var textSliderGreen: UILabel!
    @IBOutlet var textSliderBlue: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        textSliderRed.text = String(sliderRed.value)
        textSliderGreen.text = String(sliderGreen.value)
        textSliderBlue.text = String(sliderBlue.value)

    }
    
    @IBAction func sliderRed(_ sender: Any) {
        textSliderRed.text = String((round(sliderRed.value * 100))/100)
        viewScreen.backgroundColor = .red
        viewScreen.backgroundColor = viewScreen.backgroundColor?.withAlphaComponent(CGFloat((round(sliderRed.value * 100))/100))
        
    }
    
    @IBAction func sliderGren(_ sender: Any) {
        textSliderGreen.text = String((round(sliderGreen.value * 100))/100)
        viewScreen.backgroundColor = .green
        viewScreen.backgroundColor = viewScreen.backgroundColor?.withAlphaComponent(CGFloat((round(sliderGreen.value * 100))/100))
    }
    @IBAction func sliderBlue(_ sender: Any) {
        textSliderBlue.text = String((round(sliderGreen.value * 100))/100)
        viewScreen.backgroundColor = .blue
        viewScreen.backgroundColor = viewScreen.backgroundColor?.withAlphaComponent(CGFloat((round(sliderBlue.value * 100))/100))
    }
    
}

