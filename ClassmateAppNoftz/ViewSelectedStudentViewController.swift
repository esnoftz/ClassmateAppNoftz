//
//  ViewSelectedStudentViewController.swift
//  ClassmateAppNoftz
//
//  Created by David Noftz on 10/14/24.
//

import UIKit

class ViewSelectedStudentViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var infoLabel: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var name = ""
        var nickname = ""
        var grade = 0
        var boat = 0
        
        
        if AppData.selectedIndex == -1 {
            name = "N/A"
            nickname = "N/A"
            grade = 0
            boat = 0
            nameLabel.text = "Select a Student!"
        } else {
            name = AppData.classmates[AppData.selectedIndex].realName
            
            nickname = AppData.classmates[AppData.selectedIndex].nickname
            
            grade = AppData.classmates[AppData.selectedIndex].grade
            
            boat = AppData.classmates[AppData.selectedIndex].boat
            
            
            nameLabel.text = name
            
            infoLabel.text = "Nickname: \(nickname)\nGrade: \(grade)\nBoat: \(boat)"
        }
        
        AppData.selectedIndex = -1
        
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
