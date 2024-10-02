//
//  ViewController.swift
//  ClassmateAppNoftz
//
//  Created by EVANGELINE NOFTZ on 10/2/24.
//

import UIKit

class ViewController: UIViewController {

    var classmates = [Classmate]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        classmates.append(Classmate(realName: "Eva Noftz", grade: 12, boat: 6, nickname: "No Pickles Noftz"))
        classmates.append(Classmate(realName: "Ava Schmidt", grade: 12, boat: 6, nickname: "ABBA Ava"))
        classmates.append(Classmate(realName: "Evan Meyer", grade: 11, boat: 6, nickname: "Flutin Evan"))
        classmates.append(Classmate(realName: "Justin Weber", grade: 12, boat: 6, nickname: "Wicked Weber"))
        
        classmates.append(Classmate(realName: "Cam Bradford", grade: 12, boat: 7, nickname: "Chef Cam"))
        classmates.append(Classmate(realName: "Brennan Reinhard", grade: 10, boat: 7, nickname: "Breaking Brennan"))
        
        classmates.append(Classmate(realName: "John Gariepy", grade: 12, boat: 1, nickname: "Jimmy John"))
        classmates.append(Classmate(realName: "Jayden Sawyer", grade: 12, boat: 1, nickname: "Sleepy Sawyer"))
        
        classmates.append(Classmate(realName: "Sean McCain", grade: 11, boat: 2, nickname: "Boat Gone Sean"))
        classmates.append(Classmate(realName: "Ryan Spencer", grade: 11, boat: 2, nickname: "Rainbow Ryan"))
        classmates.append(Classmate(realName: "Logan Gough", grade: 11, boat: 2, nickname: "Googball Googan"))
        classmates.append(Classmate(realName: "Michael Gruper", grade: 11, boat: 2, nickname: "Michael Michael Tricycle"))
        
        classmates.append(Classmate(realName: "Daniel Meyer", grade: 11, boat: 4, nickname: "Bananiel"))
        classmates.append(Classmate(realName: "Matthew Fitch", grade: 11, boat: 4, nickname: "Glitch Fitch"))
        classmates.append(Classmate(realName: "Ryan Stark", grade: 11, boat: 4, nickname: "Rat Ryan"))
        classmates.append(Classmate(realName: "Peter Mickle", grade: 11, boat: 4, nickname: "Peter Kickle"))














        
    }


}

