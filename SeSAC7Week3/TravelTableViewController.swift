//
//  TravelTableViewController.swift
//  SeSAC7Week3
//
//  Created by andev on 7/14/25.
//

import UIKit

struct Travel {
    let name: String
    let overview: String
    let date: String
    let like: Bool
}

class TravelTableViewController: UITableViewController {
    
    let nickname = "고래밥"
    let format = DateFormatter()
    
    
    
    let list = [Travel(name: "서울", overview: "선유도 공원 좋아요", date: "250501", like: false),
                Travel(name: "대전", overview: "111요", date: "250801", like: false),
                Travel(name: "대구", overview: "2222", date: "250901", like: false),
                Travel(name: "부산", overview: "3333 좋아요", date: "250101", like: false),
                Travel(name: "광주", overview: "444", date: "250201", like: false)
                ]
                
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setBackground()
        
        //XIB Cell로 구성하는 순간 필요한 코드
        let xib = UINib(nibName: TravelTableViewCell.identifier, bundle: nil)
        tableView.register(xib, forCellReuseIdentifier: TravelTableViewCell.identifier)
        
        tableView.rowHeight = UITableView.automaticDimension
    }
                
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
                
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: TravelTableViewCell.identifier, for: indexPath) as! TravelTableViewCell
        
        let row = list[indexPath.row]
        
        cell.dateLabel.text = row.name
        cell.dateLabel.backgroundColor = .clear
        cell.configureTravelLabel(row: row)
        cell.configureBackground(row: row)
        cell.configureDateLabel(row: row)


        

        
        
        
        return cell
    }
                
}
