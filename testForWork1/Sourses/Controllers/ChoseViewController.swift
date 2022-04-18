//
//  ChoseViewController.swift
//  testForWork1
//
//  Created by test on 17.04.2022.
//

import UIKit

class ChoseViewController: UIViewController {
//    static var  artistGo = String()
    var firstArtistGo = String()
    var secondArtistGo = String()
    var thirdArtistGo = String()
    
    @IBOutlet weak var artistOne: UIButton!
    @IBOutlet weak var artistTwo: UIButton!
    @IBOutlet weak var artistThree: UIButton!
    @IBOutlet weak var infoLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstArtistGo = TabBarController.firstButtonTitle
        artistOne.setTitle((firstArtistGo), for: .normal)
        secondArtistGo = TabBarController.secondButtonTitle
        artistTwo.setTitle((secondArtistGo), for: .normal)
        thirdArtistGo = TabBarController.thirdButtonTitle
        artistThree.setTitle((thirdArtistGo), for: .normal)
    }
    
    @IBAction func firstArtistGo(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        guard let musicViewController = storyBoard.instantiateViewController(withIdentifier: "MusicViewController") as? MusicViewController else { return }
        MusicViewController.artistName = secondArtistGo
        infoLabel.text = " Вы выбрали исполнителя \(secondArtistGo), перейдите на следующий экран для просмотра песен"
    }
    @IBAction func secondArtistGo(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        guard let musicViewController = storyBoard.instantiateViewController(withIdentifier: "MusicViewController") as? MusicViewController else { return }
        MusicViewController.artistName = firstArtistGo
        infoLabel.text = " Вы выбрали исполнителя \(firstArtistGo), перейдите на следующий экран для просмотра песен"
    }
    @IBAction func thirdartistGo(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        guard let musicViewController = storyBoard.instantiateViewController(withIdentifier: "MusicViewController") as? MusicViewController else { return }
        MusicViewController.artistName = thirdArtistGo
        infoLabel.text = " Вы выбрали исполнителя \(thirdArtistGo), перейдите на следующий экран для просмотра песен"
    }
    
    
}
