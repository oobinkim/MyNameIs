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
    var profileLabel : UILabel
    var portfolioLabel: UILabel
    var profileButton: RoundButton
    var portfolioButton: RoundButton
    
    var animatableElements: [UIView] {
           return [profileButton, profileLabel, portfolioButton, portfolioLabel]
       }
    
    override init(frame: CGRect) {
        greetingsLabel = UILabel()
        portfolioLabel = UILabel()
        profileLabel = UILabel()
        profileButton = RoundButton()
        portfolioButton = RoundButton()
       
        super.init(frame: frame)
        
        self.setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        addSubview(greetingsLabel)
        addSubview(profileLabel)
        addSubview(portfolioLabel)
        addSubview(profileButton)
        addSubview(portfolioButton)
        setupGreetingsLabel() //라벨 설정
        setupBackgroundColor()//배경색 설정
        setupRoundButton(button: profileButton, hex: "0019F4", image: "person.fill")
        setupRoundButton(button: portfolioButton, hex: "670DFD", image: "doc.fill")
        setConstraintButton()
        setSubLabelConstraint()
        setupSubLabel(label: profileLabel, text: "Check My Profile & Resume!")
        setupSubLabel(label: portfolioLabel, text: "Oobin Kim`s Portfolio")
     }
    /**
     배경색 121212
     */
    private func setupBackgroundColor() {
        self.backgroundColor =  UIColor(hex: "#121212")
    }
    
}
