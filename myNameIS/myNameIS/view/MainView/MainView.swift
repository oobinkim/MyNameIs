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
    var portfolioButton: RoundButton
    var profileLabel : UILabel
    
    override init(frame: CGRect) {
        greetingsLabel = UILabel()
        profileButton = RoundButton()
        portfolioButton = RoundButton()
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
        addSubview(profileLabel)
        addSubview(portfolioButton)
        setupGreetingsLabel() //라벨 설정
        setupBackgroundColor()//배경색 설정
        setupRoundButton(button: profileButton, hex: "0019F4", image: "person.fill")
        setupRoundButton(button: portfolioButton, hex: "670DFD", image: "doc.fill")
        setConstraintButton()
        setSubLabelConstraint()
        setupSubLabel(label: profileLabel, text: "Check My Profile!")
     }
    /**
     배경색 000000
     */
    private func setupBackgroundColor() {
        self.backgroundColor =  UIColor(hex: "#000000")
    }
    
}
