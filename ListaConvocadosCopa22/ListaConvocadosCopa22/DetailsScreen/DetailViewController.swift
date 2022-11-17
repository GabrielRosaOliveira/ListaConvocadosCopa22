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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configDetail()
        
    }
    
    func configDetail() {
        playerImageView.image = player?.playerImage
        nameLabel.text = player?.playerName
        ageLabel.text = "Idade: \(player?.playerAge ?? "") anos"
        currentTeamLabel.text = "Time atual: \(player?.currentTeam ?? "")"
        positionLabel.text = "Posição: \(player?.playerPosition ?? "")"
        
        view.backgroundColor =  UIColor(red: 177/255, green: 124/255, blue: 41/255, alpha: 1.0)
        
        ageLabel.textColor = .white
        ageLabel.font = UIFont.systemFont(ofSize: 23, weight: .semibold)
        ageLabel.font = UIFont(name: "kohinoor devanagari" , size: 23)
        
        currentTeamLabel.textColor = .white
        currentTeamLabel.font = UIFont.systemFont(ofSize: 23, weight: .semibold)
        currentTeamLabel.font = UIFont(name: "kohinoor devanagari" , size: 23)
        
        positionLabel.textColor = .white
        positionLabel.font = UIFont.systemFont(ofSize: 23, weight: .semibold)
        positionLabel.font = UIFont(name: "kohinoor devanagari" , size: 23)
        
    }
    
}
