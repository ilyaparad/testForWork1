//
//  NewViewController.swift
//  testForWork1
//
//  Created by test on 17.04.2022.
//

import UIKit

class NewViewController: UIViewController {
    
    var nameFromFirstView: String?
    var firstArtistText: String?
    var secondArtistText: String?
    var thirdArtistText: String?

    @IBOutlet weak var helloName: UILabel!
    @IBOutlet weak var firstArtist: UITextField!
    @IBOutlet weak var secondArtist: UITextField!
    @IBOutlet weak var thirdArtist: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        helloName.text = "Привет, " + (nameFromFirstView ?? "error")
    }
    
    @IBAction func moveToSearch(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        firstArtistText = firstArtist.text
        secondArtistText = secondArtist.text
        thirdArtistText = thirdArtist.text
        
        guard let tabBarController = storyboard.instantiateViewController(withIdentifier: "TabBarController") as? TabBarController else { return }
        
        tabBarController.artistMassiv.append(firstArtistText ?? "1")
        tabBarController.artistMassiv.append(secondArtistText ?? "2")
        tabBarController.artistMassiv.append(thirdArtistText ?? "3")
        
        present(tabBarController, animated: true, completion: nil)
    }
}
