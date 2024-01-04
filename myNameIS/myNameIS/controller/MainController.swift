//
//  MainController.swift
//  myNameIS
//
//  Created by oobin on 1/2/24.
//

import UIKit

class MainController: UIViewController {
    
    var mainView: MainView!
    var model = MainModel()
    var currentLineIndex = 0
    var timer: Timer?
    
    override func loadView() {
        // 클래스의 mainView 속성을 초기화
        mainView = MainView()
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.profileButton.addTarget(self, action: #selector(profileButtonTapped), for: .touchUpInside)
        timer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(udateTextTimer), userInfo: nil, repeats: true)
    }
    
    @objc func profileButtonTapped(){
        model.profileButtonTapped(VC: self)
    }
    
    @objc func udateTextTimer() {
        if currentLineIndex < model.greetings.lines.count {
            mainView.updateText(text: model.greetings.lines[currentLineIndex])
            currentLineIndex += 1
        } else {
            timer?.invalidate()
            showObject()
        }
    }
    
    private func showObject() {
        mainView.profileButton.isHidden = false
        mainView.profileLabel.isHidden = false
        mainView.portfolioButton.isHidden = false
        mainView.profileButton.alpha = 0
        mainView.profileLabel.alpha = 0
        mainView.portfolioButton.alpha = 0
        UIView.animate(withDuration: 2.0, animations: {
            self.mainView.profileButton.alpha = 1
            self.mainView.profileLabel.alpha = 1
            self.mainView.portfolioButton.alpha = 1
        })
    }
}
