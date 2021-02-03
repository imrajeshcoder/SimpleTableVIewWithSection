//
//  ContactClass.swift
//  simpleTableVIew
//
//  Created by Vijay on 01/02/21.
//

import UIKit

class ContactClass: UIViewController , UITableViewDelegate , UITableViewDataSource{

    //var dicContactDetail
    var arrSection = ["Home Contact","Office Contact"]
    @IBOutlet weak var tblContact: UITableView!
    let dict = [  0 :  [0 : [ "name": "Rajesh", "MoNO": "12345678910", "photo": "img01" ] ,
                       1 : [ "name": "Vijay", "MoNO": "0987654321", "photo": "img02" ] ,
                       2 : [ "name": "ABC", "MoNO": "68695423545", "photo": "img03" ] ,
                       3 : [ "name": "PQR", "MoNO": "988954537", "photo": "img04" ] ,
                       4 : [ "name": "XYZ", "MoNO": "564245775", "photo": "img05" ] ,
                       5 : [ "name": "MNP", "MoNO": "1575875454", "photo": "img06" ] ,
                       6 : [ "name": "QWE", "MoNO": "4757848487", "photo": "img07" ]
                ] ,
                 1 : [0 : [ "name": "gfg", "MoNO": "12345678910", "photo": "img01" ] ,
                      1 : [ "name": "Vigfdgfdjay", "MoNO": "0987654321", "photo": "img02" ] ,
                      2 : [ "name": "fgf", "MoNO": "68695423545", "photo": "img03" ] ,
                      3 : [ "name": "fgfd n", "MoNO": "988954537", "photo": "img04" ] ,
                      4 : [ "name": "nbhfgh", "MoNO": "564245775", "photo": "img05" ] ,
                      5 : [ "name": "htytr", "MoNO": "1575875454", "photo": "img06" ] ,
                      6 : [ "name": "ytryrt", "MoNO": "4757848487", "photo": "img07" ],
                      7: [ "name": "bgdfe", "MoNO": "878878", "photo": "img07" ],
                      8 : [ "name": "reuj", "MoNO": "56578", "photo": "img07" ],
                      9 : [ "name": "qwaszd", "MoNO": "87878777", "photo": "img07" ],
                 ]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblContact.delegate = self
        tblContact.dataSource = self
        // Do any additional setup after loading the view.
    

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return dict.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    
        let hearderView = tableView.dequeueReusableCell(withIdentifier: "SectionTableViewCell")as! SectionTableViewCell
        hearderView.lblTitle.text = arrSection[section]
        return hearderView
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0)
        {
            return dict[0]!.count-1
        }
        
        if(section == 1)
         {
            return dict[1]!.count-1
         }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactTableCell", for: indexPath) as! ContactTableCell
        
        if (indexPath.section == 0)
        {
            cell.lblName.text = dict[0]?[indexPath.row]?["name"]
            cell.lblMobileNumber.text = dict[0]?[indexPath.row]?["MoNO"]
            cell.imgPhoto?.image = UIImage(named: (dict[0]?[indexPath.row]?["photo"])!)
        }
        else if (indexPath.section == 1)
        {
            cell.lblName.text = dict[1]?[indexPath.row]?["name"]
            cell.lblMobileNumber.text = dict[1]?[indexPath.row]?["MoNO"]
            cell.imgPhoto?.image = UIImage(named: (dict[1]?[indexPath.row]?["photo"])!)
        
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var phoneNumber = dict[indexPath.section]?[indexPath.row]?["MoNO"]
        if (phoneNumber?.isEmpty != true) {
                if let url = URL(string: "tel://" + phoneNumber!) {
                    if UIApplication.shared.canOpenURL(url) {
                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
                       
                    }
                }
            }


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
