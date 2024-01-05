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
    
   func showProfileWebView(VC: UIViewController) {
        let profile = WebViewController()
          VC.present(profile, animated: true, completion: nil)
    }
    
    func showPortfolioModal(VC: UIViewController) {
        let portfolio = PortfolioController()
        VC.present(portfolio, animated: true, completion: nil)
    }
    
    func callToDeveloper() {
           if let phoneCallURL = URL(string: "tel://01093157655") {
               let application = UIApplication.shared
               if application.canOpenURL(phoneCallURL) {
                   application.open(phoneCallURL, options: [:], completionHandler: nil)
               }
           }
       }
}
