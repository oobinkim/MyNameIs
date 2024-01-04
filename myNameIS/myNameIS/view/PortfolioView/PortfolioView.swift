//
//  PortfolioView.swift
//  myNameIS
//
//  Created by oobin on 1/4/24.
//

import Foundation
import SnapKit
import UIKit

class PortfolioView: UIView{
    
    var ModalView : UIView
    
    override init(frame: CGRect) {
        ModalView = UIView()
       
        super.init(frame: frame)
        self.setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        setModalView()
        setupBackgroundColor()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        ModalView.layer.cornerRadius = self.bounds.size.width / 10
    }
    
    /**
     배경색 000000
     */
    private func setupBackgroundColor() {
        self.backgroundColor =  UIColor(hex: "#000000",alpha: 0.55)
    }
    private func setModalView(){
        addSubview(ModalView)
        ModalView.backgroundColor = UIColor(hex: "202027")

        ModalView.snp.makeConstraints{make in
            make.centerX.centerY.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.9)
            make.height.equalToSuperview().multipliedBy(0.6)
        }
    }
    
}
