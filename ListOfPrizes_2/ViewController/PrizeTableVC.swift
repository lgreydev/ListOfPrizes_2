//
//  PrizeTableView.swift
//  ListOfPrizes_2
//
//  Created by Sergey Lukaschuk on 17.06.2021.
//

import UIKit


class PrizeTableVC: UITableViewController {
    
    var prizesList = [PrizeModel]()
    
    override func viewDidLoad() {
            prizesList.append(PrizeModel(title: "Prize 1", price: "10$"))
            prizesList.append(PrizeModel(title: "Prize 2", price: "20$"))
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prizesList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let prizeCell = tableView.dequeueReusableCell(withIdentifier: "prizeCellID", for: indexPath) as! PrizeCell
        prizeCell.titleLabel.text = prizesList[indexPath.row].title
        prizeCell.priceLabel.text = prizesList[indexPath.row].price
        return prizeCell
    }
}
