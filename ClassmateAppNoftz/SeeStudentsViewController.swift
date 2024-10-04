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
    
    
    @IBOutlet weak var newStudentSubmitButton: UIButton!
    
    @IBOutlet weak var submitStudentWantEditButton: UIButton!
    
    @IBOutlet weak var wantEditTextField: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    @IBOutlet weak var editPersonSubmitButton: UIButton!
    
    var editPerson = ""
    
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
        
        studentInfoTextView.text = ""
        AppData.classmatesNames.sort()
        for classmate in AppData.classmatesNames {
            studentInfoTextView.text += "\n\(classmate)"
        }
        
    }
    
    @IBAction func addStudentAction(_ sender: UIButton) {
        
        realNameInput.isHidden = false
        nicknameInput.isHidden = false
        gradeInput.isHidden = false
        boatInput.isHidden = false
        newStudentSubmitButton.isHidden = false
        
        
        
    }
    
    @IBAction func submitNewStudentAction(_ sender: UIButton) {
        
        AppData.classmates.append(Classmate(realName: realNameInput.text!, grade: Int(gradeInput.text!)!, boat: Int(boatInput.text!)!, nickname: nicknameInput.text!))
        
        AppData.classmatesNames.append(realNameInput.text!)
        
        realNameInput.isHidden = true
        nicknameInput.isHidden = true
        gradeInput.isHidden = true
        boatInput.isHidden = true
        newStudentSubmitButton.isHidden = true
        
        realNameInput.text = ""
        nicknameInput.text = ""
        gradeInput.text = ""
        boatInput.text = ""
        
        
    }
    
    
    @IBAction func editStudentAction(_ sender: UIButton) {
        
        wantEditTextField.isHidden = false
        submitStudentWantEditButton.isHidden = false
        
        
    }
    
    @IBAction func studentWantEditAction(_ sender: UIButton) {
        
        var inArray = false
        editPerson = wantEditTextField.text!
        for i in AppData.classmatesNames {
            if i == wantEditTextField.text {
                inArray = true
            }
        }
        
        if inArray == true {
            realNameInput.isHidden = false
            nicknameInput.isHidden = false
            gradeInput.isHidden = false
            boatInput.isHidden = false
            editPersonSubmitButton.isHidden = false
        } else {
            errorLabel.text = "This person does not exist!"
        }
        
    }
    
    @IBAction func editPersonSubmitAction(_ sender: UIButton) {
        var index = 0
        var num = 0
        for i in AppData.classmatesNames {
            if i == editPerson {
                index = num
            }
            num += 1
        }
        print(index)
        
        AppData.classmates[index].realName = realNameInput.text!
        AppData.classmates[index].boat = Int(boatInput.text!)!
        AppData.classmates[index].grade = Int(gradeInput.text!)!
        AppData.classmates[index].nickname = nicknameInput.text!
        
        
        realNameInput.text = ""
        nicknameInput.text = ""
        gradeInput.text = ""
        boatInput.text = ""

        
        realNameInput.isHidden = true
        nicknameInput.isHidden = true
        gradeInput.isHidden = true
        boatInput.isHidden = true
        editPersonSubmitButton.isHidden = true
        submitStudentWantEditButton.isHidden = true
        wantEditTextField.isHidden = true
        newStudentSubmitButton.isHidden = true
        
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
