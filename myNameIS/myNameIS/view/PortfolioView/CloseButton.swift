//
//  CloseButton.swift
//  myNameIS
//
//  Created by oobin on 1/4/24.
//

import Foundation
import UIKit

extension PortfolioView{
    func setupCloseButton() {
        let config = self.bounds.size.width / 4
        let imageSizeConfig = UIImage.SymbolConfiguration(pointSize: config, weight: .bold)
        let image = UIImage(systemName: "xmark", withConfiguration: imageSizeConfig)?.withTintColor(.white, renderingMode: .alwaysOriginal)
        CloseButton.setImage(image, for: .normal)
        setConstraintCloseButton()
    }
    
    private func setConstraintCloseButton(){
        CloseButton.snp.makeConstraints { make in
            make.top.equalTo(ModalView).offset(ModalView.frame.height * 0.1)
            make.right.equalTo(ModalView).offset(ModalView.frame.width * 0.05)
            make.width.equalTo(ModalView).dividedBy(6.0)
            make.height.equalTo(ModalView).dividedBy(6.0)
        }
    }
   
}

