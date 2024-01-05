//
//  WbViewModel.swift
//  myNameIS
//
//  Created by oobin on 1/5/24.
//

import Foundation
import UIKit

class WebViewModel{
    
    var DestinationURL : String = "https://drive.google.com/file/d/1tLWVsd9CdDzf37nMFghlBK9bzI1ZjQEo/view?usp=sharing"
    var name : String = ""
    
    func openInAppStore(targetURL: URL) {
        if UIApplication.shared.canOpenURL(targetURL) {
            UIApplication.shared.open(targetURL, options: [:], completionHandler: nil)
        }
    }
}