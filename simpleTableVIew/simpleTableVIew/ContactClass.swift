//
//  ContactClass.swift
//  simpleTableVIew
//
//  Created by Vijay on 01/02/21.
//

import UIKit

class ContactClass: UIViewController , UITableViewDelegate , UITableViewDataSource{

    //var dicContactDetail
    
    @IBOutlet weak var tblContact: UITableView!
    let dict = [0 : [ "name": "Rajesh", "MoNO": "12345678910", "photo": "img01" ] ,
                1 : [ "name": "Vijay", "MoNO": "0987654321", "photo": "img02" ] ,
                2 : [ "name": "ABC", "MoNO": "68695423545", "photo": "img03" ] ,
                3 : [ "name": "PQR", "MoNO": "988954537", "photo": "img04" ] ,
                4 : [ "name": "XYZ", "MoNO": "564245775", "photo": "img05" ] ,
                5 : [ "name": "MNP", "MoNO": "1575875454", "photo": "img06" ] ,
                6 : [ "name": "QWE", "MoNO": "4757848487", "photo": "img07" ]
                ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblContact.delegate = self
        tblContact.dataSource = self
        // Do any additional setup after loading the view.

    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dict.count-1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactTableCell", for: indexPath) as! ContactTableCell
       
        cell.lblName.text = dict[indexPath.row]?["name"]
        cell.lblMobileNumber.text = dict[indexPath.row]?["MoNO"]
        cell.imgPhoto?.image = UIImage(named: (dict[indexPath.row]?["photo"])!)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            var phoneNumber = dict[indexPath.row]?["MoNO"]
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
