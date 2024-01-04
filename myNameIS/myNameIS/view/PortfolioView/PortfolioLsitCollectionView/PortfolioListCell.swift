//
//  PortfolioListCell.swift
//  myNameIS
//
//  Created by oobin on 1/4/24.
//

import Foundation
import UIKit
import SnapKit

class PortfolioListCell: UICollectionViewCell {
    var TitleLabel: UILabel!
    var TypeimageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        TitleLabel = UILabel()
        TypeimageView = UIImageView()
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        addSubview(TitleLabel)
        setupTitleLabel()
        setupImageView()
    }
    
    
    func setupTitleLabel() {
        TitleLabel.numberOfLines = 0
        TitleLabel.textAlignment = .center
        TitleLabel.font = UIFont.systemFont(ofSize: 14)
        TitleLabel.textColor = UIColor(hex: "#F7F7F7")
        /**
         제약조건
         **/
        TitleLabel.snp.makeConstraints{make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(self.contentView.snp.bottom)
            make.height.equalTo(self.contentView.frame.height * 0.4)
            make.width.equalTo(self.contentView.frame.width)
        }
    }
    private func setupImageView() {
        TypeimageView.contentMode = .scaleAspectFit
        self.contentView.addSubview(TypeimageView)
        /**
         제약조건
         **/
        TypeimageView.snp.makeConstraints { make in
            make.width.equalTo(self.contentView)
            make.height.equalTo(self.contentView.frame.height - TitleLabel.frame.height)
            make.top.equalTo(self.contentView)
            make.bottom.equalTo(TitleLabel.snp.top)
        }
    }
}
