//
//  ViewController.swift
//  HomeWork_5
//
//  Created by Pavel on 17.12.2020.
//

import UIKit
struct cellData {
    let cell: Int!
    let textForCell: String!
    let textForButton: String!
}

protocol ButtonDelegate {
    func buttonTap()
}

class TableViewController: UITableViewController {
    
    var arrayOfCellsData = [cellData]()
    
    @IBOutlet weak var header: UILabel!
    
    override func viewDidLoad() {
        arrayOfCellsData = [cellData(cell: 1, textForCell: "cell one", textForButton: "Kek"),
                            cellData(cell: 2, textForCell: "cell two", textForButton: "Shpek"),
                            cellData(cell: 3, textForCell: "cell three", textForButton: "Bobek")]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayOfCellsData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("CustomTableViewCell", owner: self, options: nil)?.first as! CustomTableViewCell
        cell.cellOne.text = arrayOfCellsData[indexPath.row].textForCell
        cell.buttonOne.setTitle(arrayOfCellsData[indexPath.row].textForButton, for: .normal)
        cell.delegate = self
        cell.setup()
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        header.text = arrayOfCellsData[indexPath.row].text
        let cell = tableView.cellForRow(at: indexPath) as! CustomTableViewCell
        header.text = cell.cellOne.text
    }
}

extension TableViewController: ButtonDelegate {
    func buttonTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let collextionViewController = storyboard.instantiateViewController(withIdentifier: "CollectionViewController") as! CollectionViewController
        self.navigationController?.pushViewController(collextionViewController, animated: true)
    }
}


