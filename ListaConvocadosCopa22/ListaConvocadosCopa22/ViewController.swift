//
//  ViewController.swift
//  ListaConvocadosCopa22
//
//  Created by Gabriel on 12/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var titleLabel: UILabel!
    
    let data: [Player] = [
        Player(playerImage: UIImage(named: "1") ?? UIImage(), playerName: "Alisson", playerAge: "30", currentTeam: "Liverpool", playerPosition: "Goleiro"),
        Player(playerImage: UIImage(named: "2") ?? UIImage(), playerName: "Marquinhos", playerAge: "28", currentTeam: "PSG", playerPosition: "Zagueiro"),
        Player(playerImage: UIImage(named: "3") ?? UIImage(), playerName: "Eder Militão", playerAge: "24", currentTeam: "Real Madrid", playerPosition: "Zagueiro"),
        Player(playerImage: UIImage(named: "4") ?? UIImage(), playerName: "Alex Telles", playerAge: "29", currentTeam: "Sevilla", playerPosition: "Lateral-esquerdo"),
        Player(playerImage: UIImage(named: "5") ?? UIImage(), playerName: "Daniel Alves", playerAge: "39", currentTeam: "Pumas", playerPosition: "Lateral-direito"),
        Player(playerImage: UIImage(named: "6") ?? UIImage(), playerName: "Casemiro", playerAge: "30", currentTeam: "Manchester United", playerPosition: "Volante"),
        Player(playerImage: UIImage(named: "7") ?? UIImage(), playerName: "Antony", playerAge: "22", currentTeam: "Manchester United", playerPosition: "Atacante"),
        Player(playerImage: UIImage(named: "8") ?? UIImage(), playerName: "Paquetá", playerAge: "25", currentTeam: "West Ham", playerPosition: "Meia-atacante"),
        Player(playerImage: UIImage(named: "9") ?? UIImage(), playerName: "Neymar", playerAge: "30", currentTeam: "PSG", playerPosition: "Atacante"),
        Player(playerImage: UIImage(named: "10") ?? UIImage(), playerName: "Vini Junior", playerAge: "22", currentTeam: "Real Madrid", playerPosition: "Atacante"),
        Player(playerImage: UIImage(named: "11") ?? UIImage(), playerName: "Rodrygo", playerAge: "21", currentTeam: "Real Madrid", playerPosition: "Atacante")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        configLabelAnView()
        self.navigationController?.navigationBar.tintColor = UIColor(red: 0/255, green: 122/255, blue: 244/255, alpha: 1.0)
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(PlayersTableViewCell.nib(), forCellReuseIdentifier: PlayersTableViewCell.identifier)
        
        tableView.layer.cornerRadius = 30
        tableView.layer.borderWidth = 1.5
        tableView.layer.borderColor = UIColor.systemBlue.cgColor
        tableView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        
    }
    
    func configLabelAnView() {
        titleLabel.text = "Seleção Brasileira"
        titleLabel.textColor = .blue
        titleLabel.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        titleLabel.font = UIFont(name: "kohinoor devanagari" , size: 30)
        
        view.backgroundColor = UIColor(red: 238/255, green: 247/255, blue: 74/255, alpha: 1.0)
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
