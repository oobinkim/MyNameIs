//
//  GreetingsLabel.swift
//  myNameIS
//
//  Created by oobin on 1/3/24.
//

import Foundation
import UIKit

extension MainView{
    func setupMessageLabel() {
        greetingsLabel.numberOfLines = 0
        greetingsLabel.textAlignment = .center
        greetingsLabel.font = UIFont.systemFont(ofSize: 16)
        greetingsLabel.textColor = UIColor(hex: "#FFFFFF")
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
        UIView.transition(with: greetingsLabel, duration: 3.0, options: .curveEaseOut, animations: {
            self.greetingsLabel.text = newText
        }, completion:{ _ in  DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
            self.greetingsLabel.isHidden = true}
        })
    }
    
}
