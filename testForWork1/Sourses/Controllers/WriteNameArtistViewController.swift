import UIKit

class WriteNameArtistViewController: UIViewController {
    
    var nameFromFirstView: String?
    var firstArtistText: String?
    var secondArtistText: String?
    var thirdArtistText: String?

    @IBOutlet weak var helloName: UILabel!
    
    @IBOutlet weak var firstArtist: UITextField!
    @IBOutlet weak var secondArtist: UITextField!
    @IBOutlet weak var thirdArtist: UITextField!
    
    @IBOutlet weak var moveToSearchOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moveToSearchOutlet.isEnabled = false
        helloName.text = "Привет, " + (nameFromFirstView ?? "error")
    }
    
    @IBAction func checkEditingText(_ sender: Any) {
        if firstArtist.text != "" && secondArtist.text != "" && thirdArtist.text != "" {
            helloName.text = "Привет, " + (nameFromFirstView ?? "error")
            moveToSearchOutlet.isEnabled = true
        } else {
            moveToSearchOutlet.setTitleColor(.gray, for: .disabled)
            moveToSearchOutlet.isEnabled = false
        }
    }
    
    @IBAction func moveToSearch(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        firstArtistText = firstArtist.text
        secondArtistText = secondArtist.text
        thirdArtistText = thirdArtist.text
        
        guard let tabBarController = storyboard.instantiateViewController(withIdentifier: "TabBarController") as? TabBarController else { return }
        
        tabBarController.artistArray.append(firstArtistText ?? "1")
        tabBarController.artistArray.append(secondArtistText ?? "2")
        tabBarController.artistArray.append(thirdArtistText ?? "3")
        
        present(tabBarController, animated: true, completion: nil)
    }
}
