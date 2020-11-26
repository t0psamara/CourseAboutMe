//
//  ViewController.swift
//  CoureAboutMe
//
//  Created by Nikita Petrenkov on 26/11/2020.
//

import UIKit


struct MyData {
    
    let fio: String = "Никита Петренков"
    
    let foto: UIImage? = UIImage(named: "Logo")
    
    let aboutMeInfo: String = "Я являюсь разработчиком мобильных приложений на платформе iOS в одной из it компаний России"
}




class ViewController: UIViewController {

    /// Поле с ФИО
    @IBOutlet weak var nameLabel: UILabel!
    
    /// Аватар
    @IBOutlet weak var fotoView: UIImageView!
    
    /// Поле с информацией о себе
    @IBOutlet weak var aboutMeLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonPressed() {
        
        let data = MyData()
        
        nameLabel.text = data.fio
        
        fotoView.image = data.foto
        
        aboutMeLabel.text = data.aboutMeInfo
        
    }
    
    @IBAction func deleteData() {
        nameLabel.text = nil
        
        fotoView.image = nil
        
        aboutMeLabel.text = nil
        
    }
}

