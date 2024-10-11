//
//  ListOfStudentsViewController.swift
//  ClassmateAppNoftz
//
//  Created by EVANGELINE NOFTZ on 10/10/24.
//

import UIKit

class ListOfStudentsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
        
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    @IBOutlet weak var errorLabel2: UILabel!
    
    
    var selectedPerson: Classmate!
    var selectedIndex = -1

    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self

    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppData.classmates.count
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! CrazyCell
        
        cell.nameOutlet.text = "Name: \(AppData.classmates[indexPath.row].realName)"
        cell.nicknameOutlet.text = "Nickname: \(AppData.classmates[indexPath.row].nickname)"
        cell.gradeOutlet.text = "Grade: \(AppData.classmates[indexPath.row].grade)"
        cell.boatOutlet2.text = "Boat: \(AppData.classmates[indexPath.row].boat)"
        
        return cell

    }

    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(AppData.classmates[indexPath.row])
        selectedPerson = AppData.classmates[indexPath.row]
        selectedIndex = indexPath.row
        print(selectedIndex)
        
    }
    
    
    @IBAction func deleteStudentAction(_ sender: UIButton) {
        if selectedIndex == -1 {
            errorLabel2.text = "Select a student!"
        } else {
            AppData.classmates.remove(at: selectedIndex)
            tableViewOutlet.reloadData()
        }
        selectedIndex = -1
        
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
