//
//  ViewController.swift
//  kullaniciKayitFormu
//
//  Created by sah on 26.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sifreTekrarText: UITextField!
    @IBOutlet weak var sifreText: UITextField!
    @IBOutlet weak var kullaniciAdiText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func kayitOl(_ sender: Any) {
    
        if(kullaniciAdiText.text == ""){
         alert(durum: "Hata", mesaj: "Kullanıcı Adı boş Geçilemez")
        }
        
        else if sifreText.text == "" {
            alert(durum: "Hata", mesaj: "Şifre Alanı Boş geçilemez")
        }
        
        else if sifreTekrarText.text == ""{
            alert(durum: "Hata", mesaj: "Şifre Tekrar Alanı boş geçilemez")
        }
       else  if sifreText.text != sifreTekrarText.text{
            alert(durum:"Hata", mesaj: "Şifreler uyuşmamaktadır.")
        }
        else{
            alert(durum: "Başarılı", mesaj: "kayıdınız başarıyla oluşturuldu.")
        }
        func alert(durum:String,mesaj:String){
            
            let alert = UIAlertController(title: durum, message: mesaj, preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "ok", style: UIAlertAction.Style.default)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            
        }
        
        
        
    }
    
}

