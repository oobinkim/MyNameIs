//
//  RoundButton.swift
//  myNameIS
//
//  Created by oobin on 1/3/24.
//

import Foundation
import UIKit

class RoundButton: UIButton {
    
    var imageName: String? {
        didSet {
            updateImage()
        }
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.bounds.size.width / 2
        updateImage()  // 레이아웃 업데이트 시 이미지도 업데이트
    }

    private func updateImage() {
        guard let imageName = imageName else { return }
        let config = self.bounds.size.width / 2
        let imageSizeConfig = UIImage.SymbolConfiguration(pointSize: config, weight: .bold)
        let image = UIImage(systemName: imageName, withConfiguration: imageSizeConfig)?.withTintColor(.white, renderingMode: .alwaysOriginal)
        self.setImage(image, for: .normal)
    }
}
