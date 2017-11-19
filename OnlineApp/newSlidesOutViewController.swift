//
//  newSlidesOutViewController.swift
//  OnlineApp
//
//  Created by SBC on 10/17/17.
//  Copyright © 2017 RTC. All rights reserved.
//

import UIKit
class newSlidesOutViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var newAdjustCollectionView: UICollectionView!
    @IBOutlet weak var notificationButton: UIBarButtonItem!
    @IBOutlet weak var slideOutButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        sidesMune()
        //customizeNaBar()
        // Do any additional setup after loading the view.
        //let itemSize = UIScreen.main.bounds.width
        //let layout = UICollectionViewFlowLayout()
        //layout.sectionInset = UIEdgeInsetsMake(20, 0, 10, 0)
        //layout.itemSize = CGSize(width: itemSize, height: itemSize)
        //layout.minimumInteritemSpacing = 1
        //layout.minimumLineSpacing = 1
        //newAdjustCollectionView.collectionViewLayout = layout
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func sidesMune() {
        if revealViewController() != nil {
            slideOutButton.target = revealViewController()
            slideOutButton.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 160
        }
    }
    //Number of views
    var productShowImages:[String] = ["1","2","3","4","5","6","7","8","2","3","4","5","6","7","8"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productShowImages.count
    }
    //Populate views
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell_images", for: indexPath) as! newProductCollectionViewCell
        cell.productCellImage.image = UIImage(named: productShowImages[indexPath.row]+".jpg")
        cell.priceLabel.text = "US $"+String(indexPath.row)
        cell.newModelLabel.text = String(indexPath.row)
        return cell
    }
}
