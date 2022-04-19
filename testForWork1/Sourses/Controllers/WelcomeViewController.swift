import UIKit

class WelcomeViewController: UIViewController {
    
    var name = String()
    
    @IBOutlet weak var hello: UILabel!
    
    @IBOutlet weak var enterButton: UIButton!
    
    @IBOutlet weak var userName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        enterButton.isEnabled = false
    }
    
    @IBAction func textFieldChanged(_ sender: UITextField) {

        if (userName.text ?? "") != "" {
            enterButton.isEnabled = true
        } else {
            enterButton.setTitleColor(.gray, for: .disabled)
            enterButton.isEnabled = false
        }
    }
    
    @IBAction func nextMoveOne(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)

        name = userName.text ?? "error"
        
        guard let newViewController = storyBoard.instantiateViewController(withIdentifier: "vc") as? WriteNameArtistViewController else { return }
        newViewController.nameFromFirstView = name
        self.present(newViewController, animated: true, completion: nil)
    }
}

