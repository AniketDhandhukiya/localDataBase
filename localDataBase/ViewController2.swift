//
//  ViewController2.swift
//  localDataBase
//
//  Created by R83 on 04/04/23.
//

import UIKit

class ViewController2: UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    var arr2 = sqlite.getData()
    @IBOutlet weak var dt: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dt.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.l1.text = arr2[indexPath.row].id.description
        cell.l2.text = arr2[indexPath.row].name
        
        return cell
    }
    
    

   
}
