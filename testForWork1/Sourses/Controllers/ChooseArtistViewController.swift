import UIKit

class ChooseArtistViewController: UIViewController {
    
    var firstArtistGo = String()
    var secondArtistGo = String()
    var thirdArtistGo = String()
    static var tapCount = Int()
    
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
        MusicViewController.artistName = secondArtistGo
        infoLabel.text = " Вы выбрали исполнителя \(secondArtistGo), перейдите на следующий экран для просмотра песен"
        ChooseArtistViewController.tapCount += 1
    }
    
    @IBAction func secondArtistGo(_ sender: UIButton) {
        MusicViewController.artistName = firstArtistGo
        infoLabel.text = " Вы выбрали исполнителя \(firstArtistGo), перейдите на следующий экран для просмотра песен"
        ChooseArtistViewController.tapCount += 1
    }
    
    @IBAction func thirdartistGo(_ sender: UIButton) {
        MusicViewController.artistName = thirdArtistGo
        infoLabel.text = " Вы выбрали исполнителя \(thirdArtistGo), перейдите на следующий экран для просмотра песен"
        ChooseArtistViewController.tapCount += 1
    }
}
