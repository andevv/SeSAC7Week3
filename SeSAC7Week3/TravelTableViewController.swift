//
//  TravelTableViewController.swift
//  SeSAC7Week3
//
//  Created by andev on 7/14/25.
//

import UIKit

class TravelTableViewController: UITableViewController {
    
    let nickname = "고래밥"
    let format = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //XIB Cell로 구성하는 순간 필요한 코드
        let xib = UINib(nibName: "TravelTableViewCell", bundle: nil)
        tableView.register(xib, forCellReuseIdentifier: "TravelTableViewCell")
        
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TravelTableViewCell", for: indexPath) as! TravelTableViewCell
        
        cell.travelLabel.text = "\(nickname)asdasdnkjadnkjansknjaknsnkjcnkjvcjkknvnjwnwiefqoqwdoajsnkcnvksjnvkjnfjvnwoodhoqwidoianjknvkjsdfnkjqoihdqw\ndwqjiodjasoidasojivnoinvono"
        cell.travelLabel.numberOfLines = 0
        
        format.dateFormat = "yy년 MM월 dd일 hh시"
        
        let value = format.string(from: Date())
        cell.dateLabel.text = value
        
        return cell
    }
    
    //    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    //
    //        if indexPath.row < 3 {
    //            return UITableView.automaticDimension
    //        } else {
    //            return 100
    //        }
    
    
}
