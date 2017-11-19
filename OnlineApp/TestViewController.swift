//
//  TestViewController.swift
//  OnlineApp
//
//  Created by SBC on 10/22/17.
//  Copyright © 2017 RTC. All rights reserved.
//

import UIKit

class TestViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    

    var imagecell:[String] = ["1","2","3","4","5","6","7","8"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagecell.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell_image", for: indexPath) as! TestCollectionViewCell
        cell.cellImages.image = UIImage(named: imagecell[indexPath.row]+".jpg")
        cell.modelLabel.text = String(360*indexPath.row)
        print("success")
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
