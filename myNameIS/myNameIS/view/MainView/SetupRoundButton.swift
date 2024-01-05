//
//  ProfileButton.swift
//  myNameIS
//
//  Created by oobin on 1/3/24.
//

import Foundation
import UIKit

extension MainView{
    
    func setupRoundButton(button: RoundButton, hex: String, image: String) {
        button.imageName = image  // 이미지 이름 설정
        button.isHidden = true
        button.backgroundColor = UIColor(hex: hex)
        button.clipsToBounds = true
        button.imageView?.contentMode = .scaleAspectFit
    }
    
    func setConstraintButton(){
        profileButton.snp.makeConstraints { make in
            make.width.equalToSuperview().multipliedBy(1.0/4.0)
            make.height.equalTo(profileButton.snp.width)
            make.left.equalToSuperview().offset(UIScreen.main.bounds.width * 0.05)
            make.top.equalToSuperview().offset(UIScreen.main.bounds.height * 0.15)
        }
        portfolioButton.snp.makeConstraints{make in
            make.width.equalToSuperview().multipliedBy(1.0/4.0)
            make.height.equalTo(profileButton.snp.width)
            make.right.equalToSuperview().offset(UIScreen.main.bounds.width * -0.05)
            make.top.equalTo(profileLabel.snp.bottom).offset(UIScreen.main.bounds.height * 0.05)
        }
        
        velogButton.snp.makeConstraints { make in
            make.width.equalToSuperview().multipliedBy(1.0/4.0)
            make.height.equalTo(profileButton.snp.width)
            make.left.equalToSuperview().offset(UIScreen.main.bounds.width * 0.05)
            make.top.equalTo(portfolioLabel.snp.bottom).offset(UIScreen.main.bounds.height * 0.05)
        }
        
        callButton.snp.makeConstraints { make in
            make.width.equalToSuperview().multipliedBy(1.0/4.0)
            make.height.equalTo(profileButton.snp.width)
            make.right.equalToSuperview().offset(UIScreen.main.bounds.width * -0.05)
            make.top.equalTo(velogLabel.snp.bottom).offset(UIScreen.main.bounds.height * 0.05)
        }
    }
   
}
