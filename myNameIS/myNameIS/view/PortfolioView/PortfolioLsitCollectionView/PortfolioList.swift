//
//  PortfolioList.swift
//  myNameIS
//
//  Created by oobin on 1/4/24.
//

import Foundation
import UIKit

extension PortfolioView {
    
    func setPortfolioListCollectionView(){
        PortfolioList.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "PortfolioListCell")
        ModalView.addSubview(PortfolioList)
        PortfolioList.backgroundColor = UIColor(hex:"#FFFFFF",alpha: 0)
        PortfolioList.snp.makeConstraints { make in
            make.width.equalTo(ModalView).multipliedBy(0.94)
            //make.height.equalTo(ModalView).multipliedBy(0.8)
            make.centerX.equalTo(ModalView)
            make.top.equalTo(CloseButton.snp.bottom)
            make.bottom.equalTo(ModalView)
        }
        
    }
    
    
}
