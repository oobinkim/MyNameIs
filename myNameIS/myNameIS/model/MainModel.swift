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
        let lines = [NSLocalizedString("Hello!",comment: ""), NSLocalizedString("I am Oobin Kim,",comment: ""),NSLocalizedString( "An iOS Developer.",comment: "")]
    }
    var greetings = Greetings()
    
   func showProfileWebView(VC: UIViewController) {
        let profile = WebViewController()
       profile.model.DestinationURL = "https://drive.google.com/file/d/1tLWVsd9CdDzf37nMFghlBK9bzI1ZjQEo/view?usp=sharing"
          VC.present(profile, animated: true, completion: nil)
    }
    
    func showPortfolioModal(VC: UIViewController) {
        let portfolio = PortfolioController()
        VC.present(portfolio, animated: true, completion: nil)
    }
    
    func showVelogWebView(VC: UIViewController) {
         let velog = WebViewController()
        velog.model.DestinationURL = "https://velog.io/@yop5292/posts"
           VC.present(velog, animated: true, completion: nil)
     }
    
    func callToDeveloper() {
           if let phoneCallURL = URL(string: "tel://+821093157655") {
               let application = UIApplication.shared
               if application.canOpenURL(phoneCallURL) {
                   application.open(phoneCallURL, options: [:], completionHandler: nil)
               }
           }
       }
}
