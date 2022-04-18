//
//  MusicViewController.swift
//  testForWork1
//
//  Created by test on 17.04.2022.
//

import UIKit

class MusicViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let networkDatafeature = NetworkDataFeature()
    var artistMusic: DataModel? = nil
    static var artistName: String?
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return artistMusic?.resultCount ?? 10
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cellind", for: indexPath) as? TableViewCell else { return UITableViewCell() }
        
        let trackName = artistMusic?.results[indexPath.row]
        let trackImage = artistMusic?.results[indexPath.row]
        cell.cellName.text = trackName?.trackName ?? "error"
        cell.cellImage.loadFrom(URLAddress: trackImage?.artworkUrl100 ?? "")

        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(MusicViewController.artistName ?? "nil")
        let urlString = "https://itunes.apple.com/search?term=\(MusicViewController.artistName ?? "2pac")&media=music&limit=15"
        networkDatafeature.fetchData(urlString: urlString) { musicList in
            guard let artistMusic = musicList else { return }
            self.artistMusic = artistMusic
            self.tableView.reloadData()
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(MusicViewController.artistName ?? "nil")
        let urlString = "https://itunes.apple.com/search?term=\(MusicViewController.artistName ?? "2pac")&media=music&limit=15"
        networkDatafeature.fetchData(urlString: urlString) { musicList in
            guard let artistMusic = musicList else { return }
            self.artistMusic = artistMusic
            self.tableView.reloadData()
    }
    }
}
