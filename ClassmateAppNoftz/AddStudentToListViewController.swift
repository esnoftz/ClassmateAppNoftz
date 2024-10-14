//
//  AddStudentToListViewController.swift
//  ClassmateAppNoftz
//
//  Created by David Noftz on 10/14/24.
//

import UIKit

class AddStudentToListViewController: UIViewController {

    @IBOutlet weak var addRealNameInput: UITextField!
    
    @IBOutlet weak var addNicknameInput: UITextField!
    
    @IBOutlet weak var addGradeInput: UITextField!
    
    @IBOutlet weak var addBoatInput: UITextField!
    
    @IBOutlet weak var errorLabel3: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func addStudentAction(_ sender: UIButton) {
        
        if addRealNameInput.text == "" || addNicknameInput.text == "" || addGradeInput.text == "" || addBoatInput.text == "" {
            
            errorLabel3.text = "Enter an input for all 4 sections!"
        } else {
            var name = addRealNameInput.text!
            var nickname = addNicknameInput.text!
            var grade = Int(addGradeInput.text!)!
            var boat = Int(addBoatInput.text!)!
            
            AppData.classmates.append(Classmate(realName: name, grade: grade, boat: boat, nickname: nickname))
            AppData.classmatesNames.append(name)
            addRealNameInput.text = ""
            addNicknameInput.text = ""
            addBoatInput.text = ""
            addGradeInput.text = ""
            errorLabel3.text = "Student added!"
            
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
