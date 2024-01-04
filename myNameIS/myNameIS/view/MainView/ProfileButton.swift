//
//  ProfileButton.swift
//  myNameIS
//
//  Created by oobin on 1/3/24.
//

import Foundation
import UIKit

extension MainView{
    
    func setupProfileButton() {
        profileButton.isHidden = true
        profileButton.backgroundColor = UIColor.blue
        
        profileButton.clipsToBounds = true
        profileButton.imageView?.contentMode = .scaleAspectFit
        profileButton.setImageForButton(imageName: "person.fill")
        
        profileButton.snp.makeConstraints { make in
            make.width.equalToSuperview().multipliedBy(1.0/4.0)
            make.height.equalTo(profileButton.snp.width)
            make.left.equalToSuperview().offset(UIScreen.main.bounds.width * 0.05)
            make.top.equalToSuperview().offset(UIScreen.main.bounds.height * 0.1)
        }
    }
    
    
}
