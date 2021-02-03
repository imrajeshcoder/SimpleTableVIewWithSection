//
//  secondTableVIewViewController.swift
//  simpleTableVIew
//
//  Created by Vijay on 02/02/21.
//

import UIKit

class secondTableVIewViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {


    @IBOutlet weak var tblTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tblTableView.delegate = self
        tblTableView.dataSource = self
    
        // Do any additional setup after loading the view.
    }
    
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "secondTableVIewTableViewCell", for: indexPath) as! secondTableVIewTableViewCell

        cell.lblDisplayInfo?.text = "Hello\(indexPath.row)"
     
        return cell
    }
    
    func tableView(_ tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int {
        return indexPath.row % 4
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
