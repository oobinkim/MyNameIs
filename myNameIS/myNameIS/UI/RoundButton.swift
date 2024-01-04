//
//  RoundButton.swift
//  myNameIS
//
//  Created by oobin on 1/3/24.
//

import Foundation
import UIKit

class RoundButton: UIButton {
    
    // 버튼의 이미지를 설정하는 메서드
    func setImageForButton(imageName: String) {
        let config = self.bounds.size.width / 2
        let imageSizeConfig = UIImage.SymbolConfiguration(pointSize: config, weight: .bold)
        let image = UIImage(systemName: imageName, withConfiguration: imageSizeConfig)?.withTintColor(.white, renderingMode: .alwaysOriginal)
        self.setImage(image, for: .normal)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.bounds.size.width / 2
        
        // (크기 조정을 위해 기본 이미지 설정
        setImageForButton(imageName: "person.fill")
    }
}
