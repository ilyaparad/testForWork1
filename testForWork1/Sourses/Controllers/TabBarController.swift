import UIKit

class TabBarController: UITabBarController {
    
    static var  firstButtonTitle = String()
    static var  secondButtonTitle = String()
    static var  thirdButtonTitle = String()
    var artistArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TabBarController.firstButtonTitle = artistArray[0]
        TabBarController.secondButtonTitle = artistArray[1]
        TabBarController.thirdButtonTitle = artistArray[2]
    }
}
