//
//  PortfolioConllectionView.swift
//  myNameIS
//
//  Created by oobin on 1/5/24.
//

import Foundation
import UIKit

extension PortfolioController: UICollectionViewDelegate,
                               UICollectionViewDataSource{
    
    //아이템 갯수
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.projects.count
    }
    
    // 셀 아이템 정의
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
    // 셀 탭이벤트
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PortfolioListCell", for: indexPath) as! PortfolioListCell
        let selectedItem = model.projects[indexPath.row]
        model.showWebView(UrlString: selectedItem.url, name: selectedItem.projectName, VC: self)
    }
}
