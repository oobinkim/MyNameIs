//
//  ProfileLabel.swift
//  myNameIS
//
//  Created by oobin on 1/4/24.
//

import Foundation
import UIKit

extension MainView{
    
  func setupProfileLabel(){
      profileLabel.numberOfLines = 0
      profileLabel.textAlignment = .center
      profileLabel.font = UIFont.systemFont(ofSize: 16)
      profileLabel.textColor = UIColor(hex: "#FFFFFF")
      profileLabel.text  = "Check My Profile!"
      /**
       제약조건
       **/
      profileLabel.snp.makeConstraints{make in
          make.centerY.equalTo(profileButton)
          make.left.equalTo(profileButton.snp.right).offset(profileButton.frame.width * 3.0)
          make.width.equalTo(profileButton).multipliedBy(2.0)
          make.height.equalTo(profileButton).dividedBy(0.5)
      }
  }
    
    
}
