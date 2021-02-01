//
//  ViewController.swift
//  simpleTableVIew
//
//  Created by Vijay on 01/02/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    

    @IBOutlet weak var tblList: UITableView!
    var arrNames = ["Name1","Name 2","Name 3","Name 4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblList.delegate = self
        tblList.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListTableViewCell", for: indexPath)as! ListTableViewCell
        cell.lblName.text = arrNames[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}

