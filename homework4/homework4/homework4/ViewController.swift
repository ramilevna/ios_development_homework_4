//
//  ViewController.swift
//  homework4
//
//  Created by Рената Латыпова on 04.07.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    private let data: [PersonData] = [PersonData(name: "Rick"),
                                      PersonData(name: "Morti"),
                                      PersonData(name: "Summer"),
                                      PersonData(name: "Jerry"),
                                      PersonData(name: "Beth")]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let personCell = tableView.dequeueReusableCell(withIdentifier: "PersonTableViewCell") as? PersonTableViewCell
        else { return UITableViewCell() }
        
        let cellData = data[indexPath.row]
        
        personCell.setUpData(cellData)
        
        return personCell
    }
}

