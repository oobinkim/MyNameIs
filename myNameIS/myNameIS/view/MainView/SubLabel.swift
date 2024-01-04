//
//  ProfileLabel.swift
//  myNameIS
//
//  Created by oobin on 1/4/24.
//

import Foundation
import UIKit

extension MainView{
    
    func setupSubLabel(label: UILabel, text: String){
        label.isHidden = true
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 24)
        label.textColor = UIColor(hex: "#FFFFFF")
        label.text  = text
    }
      /**
       제약조건
       **/
    func setSubLabelConstraint(){
         profileLabel.snp.makeConstraints{make in
          make.centerY.equalTo(profileButton)
          make.left.equalTo(profileButton.snp.right).offset(profileButton.frame.width * 3.0)
          make.width.equalTo(profileButton).multipliedBy(2.0)
          make.height.equalTo(profileButton).dividedBy(0.5)
      }
        portfolioLabel.snp.makeConstraints{make in
            make.centerY.equalTo(portfolioButton)
            make.right.equalTo(portfolioButton.snp.left).offset(portfolioButton.frame.width * 3.0)
            make.width.equalTo(portfolioButton).multipliedBy(2.0)
            make.height.equalTo(portfolioButton).dividedBy(0.5)
        }
  }
    
    
}
