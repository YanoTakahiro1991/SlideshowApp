import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stop2: UIButton!
    @IBOutlet weak var stop1: UIButton!
    @IBOutlet weak var play: UIButton!
    
    @IBOutlet weak var startstop: UIButton!
    
    var timer: Timer!
    var timer_sec: Float = 0
    
    @IBOutlet weak var imageview: UIImageView!
    
    var image1: UIImage!
    var image2: UIImage!
    var image3: UIImage!
    var flg = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    let images: [UIImage] = [
        UIImage(named: "image1.jpg")!,
        UIImage(named: "image2.jpg")!,
        UIImage(named: "image3.jpg")!
    ]
    var index = 0
    
    @IBAction func start(_ sender: Any) {
        
        index += 1
        
        if index >= images.count {
            index = 0
        }
        imageview.image = images[index]
    }
    
    
    @IBAction func back(_ sender: Any) {
        index += 1
        
        if index >= images.count {
            index = 0
        }
        imageview.image = images[index]
        self.dismiss(animated: true, completion: nil)
    }
    
    
    func updateTimer() {
    }
    
    @objc func updateTimer(_ timer: Timer) {
        index += 1
        
        if index >= images.count {
            index = 0
        }
        imageview.image = images[index]
        
    }
    
    @IBAction func startTimer(_ sender: Any) {
        
        if (timer == nil) {
            self.timer =  Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
            stop1.isEnabled = false
            stop2.isEnabled = false
            
            startstop.setTitle("停止", for: .normal)
        } else {
            self.timer.invalidate()
            self.timer = nil
            
            stop1.isEnabled = true
            stop2.isEnabled = true
            startstop.setTitle("再生", for: .normal)
            
            
            
        }
        
        
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let resultViewController :ResultViewController = segue.destination as! ResultViewController
        
        resultViewController.x = imageview.image!
        
        if self.timer != nil {
            self.timer.invalidate()
            
            self.timer.invalidate()
            self.timer = nil
            stop1.isEnabled = true
            stop2.isEnabled = true
            startstop.setTitle("再生", for: .normal)
        }
    }
    @IBAction func unwind(_ sender: Any) {
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

