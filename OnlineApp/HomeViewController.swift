//
//  HomeViewController.swift
//  OnlineApp
//
//  Created by SBC on 10/17/17.
//  Copyright © 2017 RTC. All rights reserved.
//

import UIKit
class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    var productShowImages:[String] = ["1","2","3","4","5","6","7","8"]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productShowImages.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell_Image", for: indexPath) as! newProductCollectionViewCell
        cell.productCellImage.image = UIImage(named: productShowImages[indexPath.row]+".jpg")
        //cell.priceLabel.text = "US $"+String(350*indexPath.row)
        return cell
    }
}
