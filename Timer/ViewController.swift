import UIKit

class ViewController: UIViewController {

    var counter = 1
    var myTimer = Timer()
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var imageCounter: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageCounter.text = String(counter)
    }

    @IBAction func play(_ sender: Any) {
        // Timer 실행
       myTimer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
    }
    @IBAction func stop(_ sender: Any) {
        
        
        // Timer를 중지
        myTimer.invalidate()
    }
    
    // Timer 의해 동적으로 호출되는 함수
    @objc func doAnimation() {
        if counter == 5 {
            counter = 1
        } else {
            counter = counter + 1
        }
        myImageView.image = UIImage(named: "frame\(counter).png")
        imageCounter.text = String(counter)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

