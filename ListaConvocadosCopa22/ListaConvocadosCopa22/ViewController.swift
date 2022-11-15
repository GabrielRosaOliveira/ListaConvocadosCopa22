//
//  ViewController.swift
//  ListaConvocadosCopa22
//
//  Created by Gabriel on 12/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var logoBrasil: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var titleLabel: UILabel!
    
    let data: [Player] = [
        Player(playerImage: UIImage(named: "1") ?? UIImage(), playerName: "Alisson", playerAge: "30", currentTeam: "Liverpool", playerPosition: "Goleiro"),
        Player(playerImage: UIImage(named: "2") ?? UIImage(), playerName: "Thiago Silva", playerAge: "38", currentTeam: "Chelsea", playerPosition: "Zagueiro"),
        Player(playerImage: UIImage(named: "3") ?? UIImage(), playerName: "Eder Militão", playerAge: "24", currentTeam: "Real Madrid", playerPosition: "Zagueiro"),
        Player(playerImage: UIImage(named: "4") ?? UIImage(), playerName: "Marquinhos", playerAge: "28", currentTeam: "PSG", playerPosition: "Zagueiro"),
        Player(playerImage: UIImage(named: "5") ?? UIImage(), playerName: "Alex Telles", playerAge: "29", currentTeam: "Sevilla", playerPosition: "Lateral-esquerdo"),
        Player(playerImage: UIImage(named: "6") ?? UIImage(), playerName: "Casemiro", playerAge: "30", currentTeam: "Manchester United", playerPosition: "Volante"),
        Player(playerImage: UIImage(named: "7") ?? UIImage(), playerName: "Neymar", playerAge: "30", currentTeam: "PSG", playerPosition: "Atacante"),
        Player(playerImage: UIImage(named: "8") ?? UIImage(), playerName: "Paquetá", playerAge: "25", currentTeam: "West Ham", playerPosition: "Meia-atacante"),
        Player(playerImage: UIImage(named: "9") ?? UIImage(), playerName: "Raphina", playerAge: "25", currentTeam: "Barcelona", playerPosition: "Ponta"),
        Player(playerImage: UIImage(named: "10") ?? UIImage(), playerName: "Vini Junior", playerAge: "22", currentTeam: "Real Madrid", playerPosition: "Atacante"),
        Player(playerImage: UIImage(named: "11") ?? UIImage(), playerName: "Richarlison", playerAge: "25", currentTeam: "Tottenham", playerPosition: "Atacante")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        configLabelAnView()
        self.navigationController?.navigationBar.tintColor = UIColor(red: 0/255, green: 52/255, blue: 242/255, alpha: 1.0)
        view.backgroundColor = UIColor(red: 147/255, green: 0/255, blue: 32/255, alpha: 1.0)
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(PlayersTableViewCell.nib(), forCellReuseIdentifier: PlayersTableViewCell.identifier)
        
        tableView.layer.cornerRadius = 30
        tableView.layer.borderWidth = 1.5
        tableView.layer.borderColor = UIColor(red: 147/255, green: 0/255, blue: 32/255, alpha: 1.0).cgColor
        tableView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        tableView.showsVerticalScrollIndicator = false
    }
    
    func configLabelAnView() {
        titleLabel.text = "Seleção Brasileira"
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        titleLabel.font = UIFont(name: "chalkduster" , size: 30)
        
        view.backgroundColor = .white
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIStoryboard(name: "DetailViewController", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        let player = data[indexPath.row]
        vc?.player = player
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PlayersTableViewCell.identifier, for: indexPath) as? PlayersTableViewCell
        cell?.setupCell(player: data[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 240
    }
    
}
