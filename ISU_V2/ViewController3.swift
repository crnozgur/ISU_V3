//
//  ViewController3.swift
//  ISU_V2
//
//  Created by EtkinlikBilgisayar on 6.10.2018.
//  Copyright © 2018 EtkinlikBilgisayar. All rights reserved.
//

import UIKit

class ViewController3: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tbl_view: UITableView!
    
    var dept = ["Information Technologies","Human Resources","Logistics","Purchasing","Cooling"]
    var img = ["IT","HR","LO","PUR","COOL"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dept.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Tableview ın içerisinde olacaklar için foksiyon
       // let cell = UITableViewCell()
       // cell.textLabel?.text = dept[indexPath.row]
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Mycell", for: indexPath) as! TableViewCell3
        
        cell.lbl_deptname.text = dept[indexPath.row]
        cell.img_dept.image = UIImage(named: img[indexPath.row])
        
        //cell.img_user.image = UIImage(named: img[indexPath.row])
        return cell
    }
    

    
    var str_nname = ""
    var str_nsurname = ""
    var str_nemail = ""
    var deptname = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
 
    @IBOutlet weak var Btn_Goon: UIButton!
    
    @IBAction func Btn_Go(_ sender: Any) {
        print(str_nname)
        print(str_nsurname)
        print(str_nemail)
        
        //deptname = dept[ IndexPath.row ]
         performSegue(withIdentifier: "GoFourthPage", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let targetVC4 = segue.destination as! ViewController4
        targetVC4.newdeptname = deptname
   
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        deptname = dept[ indexPath.row ]
        performSegue(withIdentifier: "GoFourthPage", sender: nil)
    }
}
