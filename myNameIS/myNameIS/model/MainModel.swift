//
//  MainModel.swift
//  myNameIS
//
//  Created by oobin on 1/3/24.
//

import Foundation
import UIKit

class MainModel{
    
    struct Greetings {
        let lines = ["Hello!", "I am Oobin Kim,", "An iOS Developer."]
    }
    var greetings = Greetings()
    
   func profileButtonTapped(VC: UIViewController) {
        let profile = ProfileController()
          VC.present(profile, animated: true, completion: nil)
    }
}
