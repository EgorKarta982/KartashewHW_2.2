
// Никита, здравствуйте!
// Я не успел доделать домашку и если честно не соображу как реальзовать, у меня получилось что то корявое. Если вы мне намекнете слегка на мои ошибки или в каком направлении двигаться, то я попробую завтра доделать. А на уроке уже посмотрю решение, спасибо!



import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewScreen: UIView! // красный
    @IBOutlet var viewScreenGreen: UIView!
    @IBOutlet var viewScreenBlue: UIView!
    
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    @IBOutlet var textSliderRed: UILabel!
    @IBOutlet var textSliderGreen: UILabel!
    @IBOutlet var textSliderBlue: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewScreenBlue.backgroundColor = .white
        textSliderRed.text = String(sliderRed.value)
        textSliderGreen.text = String(sliderGreen.value)
        textSliderBlue.text = String(sliderBlue.value)
        
        // делаю изначально полную прозрачность
        viewScreenBlue.backgroundColor = viewScreenBlue.backgroundColor?.withAlphaComponent(CGFloat(0))
        viewScreen.backgroundColor = viewScreen.backgroundColor?.withAlphaComponent(CGFloat(0))
        viewScreenBlue.backgroundColor = viewScreenBlue.backgroundColor?.withAlphaComponent(CGFloat(0))

    }
    
    @IBAction func sliderRed(_ sender: Any) {
        textSliderRed.text = String((round(sliderRed.value * 100))/100)
        viewScreen.backgroundColor = .red
        viewScreen.backgroundColor = viewScreen.backgroundColor?.withAlphaComponent(CGFloat((round(sliderRed.value * 100))/100))
        
    }
    
    @IBAction func sliderGren(_ sender: Any) {
        textSliderGreen.text = String((round(sliderGreen.value * 100))/100)
        viewScreenGreen.backgroundColor = .green
        viewScreenGreen.backgroundColor = viewScreenGreen.backgroundColor?.withAlphaComponent(CGFloat((round(sliderGreen.value * 100))/100))
    }
    @IBAction func sliderBlue(_ sender: Any) {
        textSliderBlue.text = String((round(sliderBlue.value * 100))/100)
        viewScreenBlue.backgroundColor = .blue
        viewScreenBlue.backgroundColor = viewScreenBlue.backgroundColor?.withAlphaComponent(CGFloat((round(sliderBlue.value * 100))/100))
    }
    
}

