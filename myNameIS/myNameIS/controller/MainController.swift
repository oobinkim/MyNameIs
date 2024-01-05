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
        mainView.portfolioButton.addTarget(self, action: #selector(portfolioButtonTapped), for: .touchUpInside)
        mainView.velogButton.addTarget(self, action: #selector(velogButtonTapped), for: .touchUpInside)
        mainView.callButton.addTarget(self, action: #selector(callButtonTapped), for: .touchUpInside)
        timer = Timer.scheduledTimer(timeInterval: 0.8, target: self, selector: #selector(udateTextTimer), userInfo: nil, repeats: true)
    }
    
    @objc func profileButtonTapped(_ sender: UIButton){
        model.showProfileWebView(VC: self)
    }
    
    @objc func portfolioButtonTapped(_ sender: UIButton){
        model.showPortfolioModal(VC: self)
    }
    
    @objc func velogButtonTapped(_ sender: UIButton){
        model.showVelogWebView(VC: self)
    }
    
    @objc func callButtonTapped(_ sender: UIButton){
        model.callToDeveloper()
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
        mainView.animatableElements.forEach { element in
            element.isHidden = false
            element.alpha = 0
        }
        
        UIView.animate(withDuration: 1.0, animations: {
            self.mainView.animatableElements.forEach { element in
                element.alpha = 1
            }
        })
    }
}
