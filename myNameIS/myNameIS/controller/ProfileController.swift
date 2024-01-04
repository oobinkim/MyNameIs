//
//  ProfileController.swift
//  myNameIS
//
//  Created by oobin on 1/4/24.
//

import Foundation
import SnapKit
import WebKit

class ProfileController: UIViewController {
    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        webView = WKWebView(frame: self.view.frame)
        self.view.addSubview(webView)

        if let url = URL(string: "https://drive.google.com/file/d/101YWvVseGDH95Nttfhf_-KEzYIAzyvgA/view?usp=sharing"){
            // 구글 드라이브 파일 URL
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
}
