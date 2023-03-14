//
//  TableViewController.swift
//  (M3)FinalTextExersiceByAhmed
//
//  Created by Ahmed Muvaza on 14/3/23.
//

import UIKit

class TableViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    private var persons: [Person] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        initData()
    }
    
    private func initData() {
        persons = [Person(name: "Арафат", phoneNumber: "0555885310", image: "fish"),
                   Person(name: "Бектур", phoneNumber: "0999999999", image: "star"),
                   Person(name: "Ержан", phoneNumber: "0222222222", image: "heart"),
                   Person(name: "Муха", phoneNumber: "0999222222", image: "person"),
                   Person(name: "Нурлал Сеитов", phoneNumber: "123456789", image: "square"),
                   Person(name: "Арафат", phoneNumber: "0220786949", image: "person.fill.xmark"),
                   Person(name: "Арафат", phoneNumber: "0553131073", image: "bolt.heart.fill"),
        ]
    }
}

extension TableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = persons[indexPath.row].name
        cell.detailTextLabel?.text = persons[indexPath.row].phoneNumber
        cell.imageView?.image = UIImage(systemName: persons[indexPath.row].image)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
}

struct Person {
    var name: String
    var phoneNumber: String
    var image: String
}
