
import UIKit

class ViewController: UIViewController {

    // ссылка на сториборд, где размещен данный ViewController
    let storyboardInstance = UIStoryboard(name: "Main", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Визуальное оформление Navigation Item можно определить и кодом тут:
//        self.navigationItem.prompt = "Подсказка"
//        self.navigationItem.title = "Заголовок сцены"
//        self.navigationItem.backButtonTitle = "Назад"

    }

    // перейти к зеленой сцене
    @IBAction func toGreenScene(_ sender: UIButton) {
        // получаем ссылку на следующий контроллер, в данном случае это зеленый
        let nextViewController = storyboardInstance.instantiateViewController(withIdentifier: "greenViewController")
        // обращаемся к Navigation COntroller и вызываем метод перехода к новому контроллеру
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    // перейти к желтой сцене
    @IBAction func toYellowScene(_ sender: UIButton) {
        // получаем ссылку на следующий контроллер, в данном случае это зеленый
        let nextViewController = storyboardInstance.instantiateViewController(withIdentifier: "yellowViewController")
        // обращаемся к Navigation COntroller и вызываем метод перехода к новому контроллеру
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }

    @IBAction func toRootScene(_ sender: UIButton) {
        // обращаемся к Navigation COntroller и вызываем метод перехода к корневому контроллеру
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func toPreviousScene(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}

