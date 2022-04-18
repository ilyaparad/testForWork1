//
//  ViewController.swift
//  testForWork1
//
//  Created by test on 17.04.2022.
//

import UIKit

class ViewController: UIViewController {

    var name = String()
    
    @IBOutlet weak var hello: UILabel!
    @IBOutlet weak var userName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func nextMoveOne(_ sender: UIButton) {
        name = userName.text ?? "error"
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        guard let newViewController = storyBoard.instantiateViewController(withIdentifier: "vc") as? NewViewController else { return }
        newViewController.nameFromFirstView = name
        self.present(newViewController, animated: true, completion: nil)
    }
}

