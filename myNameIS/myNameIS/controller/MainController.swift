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

        timer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateText), userInfo: nil, repeats: true)
    }

    @objc func updateText() {
        if currentLineIndex < model.greetings.lines.count {
            mainView.updateText(text: model.greetings.lines[currentLineIndex])
            currentLineIndex += 1
        } else {
            timer?.invalidate()
        }
    }
}
