//
//  ViewController4.swift
//  ISU_V2
//
//  Created by EtkinlikBilgisayar on 13.10.2018.
//  Copyright © 2018 EtkinlikBilgisayar. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController4: UIViewController {
    
    @IBOutlet weak var txt_deptname: UITextField!
    @IBOutlet weak var txtv_feedback: UITextView!
    var newdeptname = ""
    var feedback = [""]
    var feeddept = [""]

    var databaseref : DatabaseReference!
    var databasehandle : DatabaseHandle!
    @IBAction func Btn_Gofirst(_ sender: Any) {
        
        feeddept.append(txt_deptname.text!)
        feedback.append(txtv_feedback.text)
        
        let warning = UIAlertController(title:"User Information", message:"Dear user, we received your feedback. Thank you.", preferredStyle:UIAlertControllerStyle.alert)
        
        let btn = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
        
        
       databaseref = Database.database().reference()
       databaseref.child("username").childByAutoId().setValue(txtv_feedback.text)
        
        
        warning.addAction(btn)
        present(warning, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txt_deptname.text = newdeptname

    
    }

    @IBAction func Btn_Goback(_ sender: Any) {
         performSegue(withIdentifier: "GoFirstPage", sender: nil)
    }
}
