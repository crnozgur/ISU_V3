//
//  ViewController4.swift
//  ISU_V2
//
//  Created by EtkinlikBilgisayar on 13.10.2018.
//  Copyright © 2018 EtkinlikBilgisayar. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {
    
    @IBOutlet weak var txt_deptname: UITextField!
    @IBOutlet weak var txtv_feedback: UITextView!
    var newdeptname = ""
    var feedback = [""]
    var feeddept = [""]

    @IBAction func Btn_Gofirst(_ sender: Any) {
        
        feeddept.append(txt_deptname.text!)
        feedback.append(txtv_feedback.text)
        
        let warning = UIAlertController(title:"Kullanıcı Bilgilendirme", message:"Sayın kullanıcımız, geribildiriminiz alınmıştır. İlgili bölüme iletilerek size en kısa sürede dönüş yapılacaktır. Teşekkürler.", preferredStyle:UIAlertControllerStyle.alert)
        
        let btn = UIAlertAction(title: "Tamam", style: UIAlertActionStyle.default, handler: nil)
        
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
