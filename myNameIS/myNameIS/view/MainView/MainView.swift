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
    var profileButton: RoundButton
    var profileLabel : UILabel
    
    override init(frame: CGRect) {
        greetingsLabel = UILabel()
        profileButton = RoundButton()
        profileLabel = UILabel()
        super.init(frame: frame)
        self.setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        addSubview(greetingsLabel)
        addSubview(profileButton)
        setupMessageLabel() //라벨 설정
        setupBackgroundColor()//배경색 설정
        setupProfileButton()
     }
    /**
     배경색 000000
     */
    private func setupBackgroundColor() {
        self.backgroundColor =  UIColor(hex: "#000000")
    }
    
}
