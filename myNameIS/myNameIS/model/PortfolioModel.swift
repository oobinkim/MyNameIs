//
//  PortfolioModel.swift
//  myNameIS
//
//  Created by oobin on 1/4/24.
//

import Foundation
import UIKit

class PortfolioModel {
    
    enum ProjectType {
        case git
        case doc
        case app
    }
    
    struct Project {
        var projectName: String
        var url: String
        var type: ProjectType
    }
    
    var projects: [Project]

    init() {
        projects = [
            Project(projectName: "Don`t Touch Me\n(AWS-AI Based WebSite)", url: "https://drive.google.com/file/d/1cRWw42YYEIr8PVHqmXwSJfoArGBBFh0G/view?usp=sharing", type: .doc),
            Project(projectName: "Dot Canvas\n(Localization in 5 languages)", url: "https://apps.apple.com/kr/app/dot-canvas/id1613110785", type: .app),
            Project(projectName: "MyNameIs\n(This App!)", url: "https://github.com/oobinkim/MyNameIs", type: .git)
        ]
    }
    
    func showWebView(UrlString: String, VC: UIViewController){
        let profile = WebViewController()
        profile.model.DestinationURL = UrlString
          VC.present(profile, animated: true, completion: nil)
    }
}
