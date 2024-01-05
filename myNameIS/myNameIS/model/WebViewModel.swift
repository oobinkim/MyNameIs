//
//  WbViewModel.swift
//  myNameIS
//
//  Created by oobin on 1/5/24.
//

import Foundation
import UIKit

class WebViewModel{
    
    var DestinationURL : String = ""
    var name : String = ""
    
    func openInAppStore(targetURL: URL) {
        if UIApplication.shared.canOpenURL(targetURL) {
            UIApplication.shared.open(targetURL, options: [:], completionHandler: nil)
        }
    }
}
