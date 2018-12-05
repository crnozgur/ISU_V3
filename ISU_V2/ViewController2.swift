//
//  ViewController2.swift
//  ISU_V2
//
//  Created by EtkinlikBilgisayar on 6.10.2018.
//  Copyright © 2018 EtkinlikBilgisayar. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var Txt_Name: UITextField!
    @IBOutlet weak var Txt_Surname: UITextField!
    @IBOutlet weak var Txt_Email: UITextField!
    
    var str_name = ""
    var str_surname = ""
    var str_email = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func Btn_Login(_ sender: Any) {
        
        str_name = Txt_Name.text!
        str_surname = Txt_Surname.text!
        str_email = Txt_Email.text!
        
        //kayıtlı kullanıcı bilgisini sıfırla
        //UserDefaults.standard.removeObject(forKey: "sname")
        //UserDefaults.standard.removeObject(forKey: "ssurname")
       // UserDefaults.standard.removeObject(forKey: "semail")
      //  UserDefaults.standard.synchronize()
        //kullanıcı bilgisini yeni haliyle sakla
      //  UserDefaults.standard.set(Txt_Name.text, forKey: "sname")
        //UserDefaults.standard.set(Txt_Surname.text, forKey: "ssurname")
        //UserDefaults.standard.set(Txt_Email, forKey: "semail")
        //UserDefaults.standard.synchronize()
        
        performSegue(withIdentifier: "GoThirdPage", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let targetVC3 = segue.destination as! ViewController3
        targetVC3.str_nname = str_name
        targetVC3.str_nsurname = str_surname
        targetVC3.str_nemail = str_email
    }
}
