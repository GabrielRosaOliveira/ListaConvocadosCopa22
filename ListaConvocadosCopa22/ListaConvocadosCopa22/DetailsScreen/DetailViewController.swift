//
//  DetailViewController.swift
//  ListaConvocadosCopa22
//
//  Created by Gabriel on 12/11/22.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var currentTeamLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    
    var player: Player?
    
    var myString:NSString = "I AM KIRIT MODI"
    var currentTeamLabel1 = NSMutableAttributedString()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        configDetail()
        playerImageView.image = player?.playerImage
        nameLabel.text = player?.playerName
        ageLabel.text = "Idade: \(player?.playerAge ?? "") anos"
        currentTeamLabel.text = "Time atual: \(player?.currentTeam ?? "")"
        positionLabel.text = "Posição: \(player?.playerPosition ?? "")"
    }
    
    func configDetail() {
        view.backgroundColor =  UIColor(red: 238/255, green: 247/255, blue: 74/255, alpha: 1.0)
        
        nameLabel.textColor = .black
        currentTeamLabel.textColor = UIColor(red: 0/255, green: 122/255, blue: 244/255, alpha: 1.0)
        ageLabel.textColor = UIColor(red: 0/255, green: 122/255, blue: 244/255, alpha: 1.0)
        positionLabel.textColor = UIColor(red: 0/255, green: 122/255, blue: 244/255, alpha: 1.0)
        
    }

}
