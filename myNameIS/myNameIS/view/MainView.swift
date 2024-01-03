//
//  MainView.swift
//  myNameIS
//
//  Created by oobin on 1/3/24.
//

import Foundation
import UIKit
import SnapKit

class MainView: UIView {
    
    var greetingsLabel: UILabel

    override init(frame: CGRect) {
        greetingsLabel = UILabel()
        super.init(frame: frame)
        
        setupMessageLabel() //라벨 설정
        setupBackgroundColor()//배경색 설정
        addSubview(greetingsLabel)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupMessageLabel() {
        greetingsLabel.numberOfLines = 0
        greetingsLabel.textAlignment = .center
        greetingsLabel.font = UIFont.systemFont(ofSize: 16)
        
        addSubview(greetingsLabel)
        /**
         제약조건
         **/
        greetingsLabel.snp.makeConstraints{make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.1)
        }
    }

    func updateText(text: String) {
        //텍스트 애니메이션 로직
        let currentText = greetingsLabel.text ?? ""
        let newText = currentText.isEmpty ? text : "\(currentText)\n\(text)"
        UIView.transition(with: greetingsLabel, duration: 3.0, options: .transitionCrossDissolve, animations: {
            self.greetingsLabel.text = newText
        }, completion: nil)
    }
    
    /**
     배경색 9BA44E
     */
    
    private func setupBackgroundColor() {
        self.backgroundColor =  UIColor(hex: "#9BA44E")
    }
}
