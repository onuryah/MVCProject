//
//  ViewController.swift
//  MVCProject
//
//  Created by Ceren Çapar on 5.11.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var leadersArray = [Leaders]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        let atatürk = Leaders(name: "Mustafa Kemal Atatürk", comment: "He is the father all Turks. Because he created modern Turkey from nothing!", image: UIImage(named: "ataturk")!)
        let cengizhan = Leaders(name: "Cengizhan", comment: "Fear is the deep feeling. However Cengizhan teachs us fear can be destroyed!", image: UIImage(named: "cengizhan")!)
        let alparslan = Leaders(name: "Alparslan", comment: "He opened the Anatolia's-where we live- Gates to Turks.", image: UIImage(named: "alparslan")!)
        let fatih = Leaders(name: "Fatih Sultan Mehmet", comment: "He get the Istanbul that can't be destroyed city from Byzantium at 21!", image: UIImage(named: "fatih")!)
        let lelouch = Leaders(name: "Lelouch Vi Britannia", comment: "He gives the freedom to all the world!", image: UIImage(named: "lelouch")!)
        let putin = Leaders(name: "Vladimir Putin", comment: "He rebuild his country.", image: UIImage(named: "putin")!)
        
        leadersArray.append(atatürk)
        leadersArray.append(cengizhan)
        leadersArray.append(alparslan)
        leadersArray.append(fatih)
        leadersArray.append(lelouch)
        leadersArray.append(putin)
        
        tableView.reloadData()
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return leadersArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ViewCell
        
        cell.commentLabelField.lineBreakMode = .byWordWrapping
        cell.commentLabelField.numberOfLines = 0
        
        cell.nameLabelField.text = leadersArray[indexPath.row].name
        cell.commentLabelField.text = leadersArray[indexPath.row].comment
        cell.leaderImageView.image = leadersArray[indexPath.row].image
        return cell
    }

}

