//
//  PlayersTableViewCell.swift
//  ListaConvocadosCopa22
//
//  Created by Gabriel on 12/11/22.
//

import UIKit

class PlayersTableViewCell: UITableViewCell {
    
    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var backGroundView: UIView!
    
    
    static let identifier: String = "PlayersTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configCellAndLabel()
    }
    
    func setupCell(player: Player) {
        playerImageView.image = player.playerImage
        nameLabel.text = player.playerName
    }
    
    func configCellAndLabel() {
        selectionStyle = .none
        contentView.backgroundColor = .clear
        backGroundView.backgroundColor = UIColor(red: 177/255, green: 124/255, blue: 41/255, alpha: 1.0)
        
        nameLabel.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        nameLabel.font = UIFont(name: "chalkduster" , size: 20)
        nameLabel.textColor = .white
    }
    
}

extension CALayer {
    func makeShadow(color: UIColor,
                    x: CGFloat = 0,
                    y: CGFloat = 0,
                    blur: CGFloat = 0,
                    spread: CGFloat = 0) {
        shadowColor = color.cgColor
        shadowOpacity = 1
        masksToBounds = false
        shadowOffset = CGSize(width: x, height: y)
        shadowRadius = blur / 2
        if spread == 0 {
            shadowPath = nil
        }
        else {
            let rect = bounds.insetBy(dx: -spread, dy: -spread)
            shadowPath = UIBezierPath(rect: rect).cgPath
        }
    }
}

