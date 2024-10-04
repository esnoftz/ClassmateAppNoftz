//
//  ViewController.swift
//  ClassmateAppNoftz
//
//  Created by EVANGELINE NOFTZ on 10/2/24.
//

class AppData {
    static var classmates = [Classmate]()
    static var classmatesNames = [String]()
}


import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AppData.classmates.append(Classmate(realName: "Eva Noftz", grade: 12, boat: 6, nickname: "No Pickles Noftz"))
        AppData.classmates.append(Classmate(realName: "Ava Schmidt", grade: 12, boat: 6, nickname: "ABBA Ava"))
        AppData.classmates.append(Classmate(realName: "Evan Meyer", grade: 11, boat: 6, nickname: "Flutin Evan"))
        AppData.classmates.append(Classmate(realName: "Justin Weber", grade: 12, boat: 6, nickname: "Wicked Weber"))
        
        AppData.classmates.append(Classmate(realName: "Cam Bradford", grade: 12, boat: 7, nickname: "Chef Cam"))
        AppData.classmates.append(Classmate(realName: "Brennan Reinhard", grade: 10, boat: 7, nickname: "Breaking Brennan"))
        
        AppData.classmates.append(Classmate(realName: "John Gariepy", grade: 12, boat: 1, nickname: "Jimmy John"))
        AppData.classmates.append(Classmate(realName: "Jayden Sawyer", grade: 12, boat: 1, nickname: "Sleepy Sawyer"))
        
        AppData.classmates.append(Classmate(realName: "Sean McCain", grade: 11, boat: 2, nickname: "Boat Gone Sean"))
        AppData.classmates.append(Classmate(realName: "Ryan Spencer", grade: 11, boat: 2, nickname: "Rainbow Ryan"))
        AppData.classmates.append(Classmate(realName: "Logan Gough", grade: 11, boat: 2, nickname: "Googball Googan"))
        AppData.classmates.append(Classmate(realName: "Michael Gruper", grade: 11, boat: 2, nickname: "Michael Michael Tricycle"))
        
        AppData.classmates.append(Classmate(realName: "Daniel Husby", grade: 11, boat: 4, nickname: "Bananiel"))
        AppData.classmates.append(Classmate(realName: "Matthew Fitch", grade: 11, boat: 4, nickname: "Glitch Fitch"))
        AppData.classmates.append(Classmate(realName: "Ryan Stark", grade: 11, boat: 4, nickname: "Rat Ryan"))
        AppData.classmates.append(Classmate(realName: "Peter Mickle", grade: 11, boat: 4, nickname: "Peter Kickle"))

        
        for classmate in AppData.classmates{
            var current = classmate.realName
            AppData.classmatesNames.append(current)
        }












        
    }


}

