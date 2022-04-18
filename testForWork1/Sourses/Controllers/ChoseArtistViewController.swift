//
//  ChoseArtistViewController.swift
//  testForWork1
//
//  Created by test on 17.04.2022.
//

import UIKit

class ChoseArtistViewController: UIViewController {
    var firstArtistTitle: String?
    @IBOutlet weak var firstArtistGo: UIButton!
    @IBOutlet weak var secondArtistGo: UIButton!
    @IBOutlet weak var thirdArtistGo: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstArtistGo.setTitle(firstArtistTitle, for: .normal)
        
    }
    
    
    
    

}
