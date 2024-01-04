//
//  MainModel.swift
//  myNameIS
//
//  Created by oobin on 1/3/24.
//

import Foundation

class MainModel{
    
    struct Greetings {
        let lines = ["안녕하세요!", "iOS 개발자", "김우빈입니다."]
    }
    var greetings = Greetings()
    
    struct Profile {
        var info: [String: String]
        init(name: String, phoneNumber: String, hobby: String, career: String, email: String) {
            info = [
                "name": "김우빈",
                "phoneNumber": "010 - 9315 - 7655",
                "hobby": "앵무새키우기/ 게임/베스 낚시",
                "career": "AI개발 4년/ iOS개발 1년 2개월",
                "email": "oobin765@gmail.com"
            ]
        }
    }
}
