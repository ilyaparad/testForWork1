//
//  TabBarController.swift
//  testForWork1
//
//  Created by test on 17.04.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    static var  firstButtonTitle = String()
    static var  secondButtonTitle = String()
    static var  thirdButtonTitle = String()
    var artistMassiv: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TabBarController.firstButtonTitle = artistMassiv[0]
        TabBarController.secondButtonTitle = artistMassiv[1]
        TabBarController.thirdButtonTitle = artistMassiv[2]
    }
}
