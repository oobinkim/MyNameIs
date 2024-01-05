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
        label.textColor = UIColor(hex: "#F7F7F7")
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
            make.height.equalTo(profileButton).multipliedBy(2.0)
        }
        portfolioLabel.snp.makeConstraints{make in
            make.centerY.equalTo(portfolioButton)
            make.right.equalTo(portfolioButton.snp.left).offset(portfolioButton.frame.width * 3.0)
            make.width.equalTo(portfolioButton).multipliedBy(2.0)
            make.height.equalTo(portfolioButton).multipliedBy(2.0)
        }
        
        velogLabel.snp.makeConstraints{make in
            make.centerY.equalTo(velogButton)
            make.left.equalTo(velogButton.snp.right).offset(velogButton.frame.width * 3.0)
            make.width.equalTo(velogButton).multipliedBy(2.0)
            make.height.equalTo(velogButton).multipliedBy(2.0)
        }
    }
    
    
}
