//
//  PortfolioController.swift
//  myNameIS
//
//  Created by oobin on 1/4/24.
//

import Foundation
import UIKit

class PortfolioController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    var portfolioView: PortfolioView!
    var model =  PortfolioModel()
    var currentLineIndex = 0
    var timer: Timer?
    
    override func loadView() {
        // 클래스의 mainView 속성을 초기화
        portfolioView = PortfolioView()
        self.view = portfolioView
        portfolioView.PortfolioList.delegate = self
        portfolioView.PortfolioList.dataSource = self
    }
    
    @objc func closeButtonTapped(_ sender : UIButton){
        self.dismiss(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        portfolioView.CloseButton.addTarget(self, action: #selector(closeButtonTapped), for: .touchUpInside)
        portfolioView.PortfolioList.register(PortfolioListCell.self, forCellWithReuseIdentifier: "PortfolioListCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.projects.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PortfolioListCell", for: indexPath) as! PortfolioListCell
        cell.TitleLabel.text = model.projects[indexPath.row].projectName
        
        switch model.projects[indexPath.row].type {
        case .git:
            cell.TypeimageView.image = UIImage(systemName: "cat.circle")
            cell.TypeimageView.tintColor = UIColor(hex: "#5E4AD9")
        case .doc:
            cell.TypeimageView.image = UIImage(systemName: "doc")
            cell.TypeimageView.tintColor = UIColor(hex: "#2055DC")
        case .app:
            cell.TypeimageView.image = UIImage(systemName: "iphone.gen1")
            cell.TypeimageView.tintColor = UIColor(hex: "#239C62")
        }
        return cell
    }
}
