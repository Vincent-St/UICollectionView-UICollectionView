
//  ViewController.swift
//  Created by Vincent-St on 2/18/18.
//  Copyright © 2018 Vincent-St. All rights reserved.

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let firstCellId = "cellfirstCellIdId"
    
    var appCategories: [AppCategory]? 

    override func viewDidLoad() {
        super.viewDidLoad()
        appCategories = AppCategory.sampleAppCategories()
        collectionView?.backgroundColor = UIColor.init(red: 200/255, green: 200/255, blue: 200/255, alpha: 1)
        collectionView?.register(CategoryCell.self, forCellWithReuseIdentifier: firstCellId)
        navigationItem.title = "Chapters"
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: firstCellId, for: indexPath) as! CategoryCell
        cell.appCategory = appCategories?[indexPath.item]
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if let count = appCategories?.count {
            return count
        }
        return 0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 300)
    }


}




