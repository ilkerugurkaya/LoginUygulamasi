//
//  AnaSayfaVC.swift
//  LoginUygulaması
//
//  Created by İlker Kaya on 28.11.2022.
//

import UIKit

class AnaSayfaVC: UIViewController {
    
    
    @IBOutlet weak var labelSonuc: UILabel!
    let d = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        
        labelSonuc.text = ka

        navigationItem.hidesBackButton = true
    }
    

    @IBAction func cikisYap(_ sender: Any) {
        d.removeObject(forKey: "kullaniciAdi")
        d.removeObject(forKey: "sifre")
        
        exit(-1)
    }
    

}
