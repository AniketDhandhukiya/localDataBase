//
//  ViewController.swift
//  localDataBase
//
//  Created by R83 on 03/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var t2: UITextField!
    @IBOutlet weak var t1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        sqlite.createFile()
    }


    @IBAction func saveAction(_ sender: Any) {
        if let x = t1.text, let y = Int(x){
            sqlite.addData(id: y, name: t2.text!)
        }
    }
    @IBAction func DeleteAction(_ sender: Any) {
        if let x = t1.text, let y = Int(x){
            sqlite.deleteData(id: y, name: t2.text!)
        }
    }
    @IBAction func getdata(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigationController?.pushViewController(navigate, animated: true)
    }

}

