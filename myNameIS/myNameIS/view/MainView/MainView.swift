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
    var velogLabel: UILabel
    var callLabel : UILabel
    var profileButton: RoundButton
    var portfolioButton: RoundButton
    var velogButton: RoundButton
    var callButton: RoundButton
    
    var animatableElements: [UIView] {
        return [profileButton, profileLabel, portfolioButton, portfolioLabel,velogButton, velogLabel, callButton, callLabel]
       }
    
    override init(frame: CGRect) {
        greetingsLabel = UILabel()
        portfolioLabel = UILabel()
        velogLabel = UILabel()
        profileLabel = UILabel()
        callLabel = UILabel()
        profileButton = RoundButton()
        portfolioButton = RoundButton()
        velogButton = RoundButton()
        callButton = RoundButton()
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
        addSubview(velogLabel)
        addSubview(callLabel)
        addSubview(profileButton)
        addSubview(portfolioButton)
        addSubview(velogButton)
        addSubview(callButton)
        setupGreetingsLabel() //라벨 설정
        setupBackgroundColor()//배경색 설정
        setupRoundButton(button: profileButton, hex: "#0019F4", image: "person.fill")
        setupRoundButton(button: portfolioButton, hex: "#670DFD", image: "doc.fill")
        setupRoundButton(button: velogButton, hex: "#BE2E22", image: "v.square.fill")
        setupRoundButton(button: callButton, hex: "#27900B", image: "phone.fill")
        setConstraintButton()
        setSubLabelConstraint()
        setupSubLabel(label: profileLabel, text: NSLocalizedString("Check My Profile & Resume!", comment: ""))
        setupSubLabel(label: portfolioLabel, text: NSLocalizedString("Oobin Kim`s Portfolio",comment: ""))
        setupSubLabel(label: velogLabel, text: NSLocalizedString("welcome to My Velog!",comment: ""))
        setupSubLabel(label: callLabel, text: NSLocalizedString("Contact Me", comment: ""))
     }
    /**
     배경색 121212
     */
    private func setupBackgroundColor() {
        self.backgroundColor =  UIColor(hex: "#121212")
    }
    
}
