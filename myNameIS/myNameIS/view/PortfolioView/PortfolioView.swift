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
    var CloseButton : UIButton
    var PortfolioList: UICollectionView
    
    override init(frame: CGRect) {
        ModalView = UIView()
        CloseButton = UIButton()
        
        PortfolioList = {
            let layout = UICollectionViewFlowLayout()
            layout.itemSize = CGSize(width: UIScreen.main.bounds.width * 0.3 , height: UIScreen.main.bounds.width * 0.3) // 셀의 크기
            layout.scrollDirection = .vertical
            let PortfolioList = UICollectionView(frame: .zero, collectionViewLayout: layout)
            return PortfolioList
        }()
        
        super.init(frame: frame)
        self.setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        setModalView()
        setupBackgroundColor()
        setupCloseButton()
        setPortfolioListCollectionView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        ModalView.layer.cornerRadius = self.bounds.size.width / 10
    }
    /**
     배경색 121212
     */
    private func setupBackgroundColor() {
        self.backgroundColor =  UIColor(hex: "#121212",alpha: 0.55)
    }
    private func setModalView(){
        addSubview(ModalView)
        ModalView.addSubview(CloseButton)
        ModalView.backgroundColor = UIColor(hex: "202027")
        ModalView.snp.makeConstraints{make in
            make.centerX.centerY.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.9)
            make.height.equalToSuperview().multipliedBy(0.6)
        }
    }
    
}
