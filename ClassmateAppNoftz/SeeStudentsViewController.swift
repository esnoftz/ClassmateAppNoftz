//
//  SeeStudentsViewController.swift
//  ClassmateAppNoftz
//
//  Created by EVANGELINE NOFTZ on 10/2/24.
//

import UIKit

class SeeStudentsViewController: UIViewController {

    var numStudent = 0
    
    @IBOutlet weak var studentInfoTextView: UITextView!
    
    @IBOutlet weak var realNameInput: UITextField!
    
    @IBOutlet weak var nicknameInput: UITextField!
    
    @IBOutlet weak var gradeInput: UITextField!
    
    @IBOutlet weak var boatInput: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    
    
    @IBAction func nextStudentAction(_ sender: UIButton) {
        
        studentInfoTextView.text = "Student: \(AppData.classmates[numStudent].realName)\nNickname: \(AppData.classmates[numStudent].nickname)\nGrade: \(AppData.classmates[numStudent].grade)\nBoat: \(AppData.classmates[numStudent].boat)"
        numStudent += 1
        if numStudent == AppData.classmates.count {
            numStudent = 0
        }

    }
    
    
    @IBAction func sortStudentsAction(_ sender: UIButton) {
        
        AppData.classmatesNames.sort()
        for classmate in AppData.classmatesNames {
            studentInfoTextView.text += "\n\(classmate)"
        }
        
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
