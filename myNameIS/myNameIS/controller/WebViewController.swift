//
//  WebViewController.swift
//  myNameIS
//
//  Created by oobin on 1/4/24.
//

import Foundation
import WebKit

class WebViewController: UIViewController {
    var webView: WKWebView!
    
    var model = WebViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView(frame: self.view.frame)
        self.view.addSubview(webView)
        if let TargetUrl = URL(string: model.DestinationURL){
            // 구글 드라이브 파일 URL
            if !model.name.contains("Dot Canvas"){
                let request = URLRequest(url: TargetUrl)
                webView.load(request)
            }else{
                model.openInAppStore(targetURL: TargetUrl)
            }
        }
    }
}
