//
//  ListOfStudentsViewController.swift
//  ClassmateAppNoftz
//
//  Created by EVANGELINE NOFTZ on 10/10/24.
//

import UIKit

class ListOfStudentsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
        
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self

    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppData.classmatesNames.count
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! CrazyCell
        
        cell.nameOutlet.text = AppData.classmates[indexPath.row].realName
        cell.nicknameOutlet.text = AppData.classmates[indexPath.row].nickname
        cell.gradeOutlet.text = Int(AppData.classmates[indexPath.row].grade)
        cell.boatOutlet.text = AppData.classmates[indexPath.row].boat
        return cell

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
