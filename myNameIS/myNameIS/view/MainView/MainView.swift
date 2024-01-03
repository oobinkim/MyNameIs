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
    var profileButton: UIButton
    
    override init(frame: CGRect) {
        greetingsLabel = UILabel()
        profileButton = UIButton()
        super.init(frame: frame)
        self.setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        setupMessageLabel() //라벨 설정
        setupBackgroundColor()//배경색 설정
        addSubview(greetingsLabel)
     }
    /**
     배경색 000000
     */
    private func setupBackgroundColor() {
        self.backgroundColor =  UIColor(hex: "#000000")
    }
}
