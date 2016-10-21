//
//  CategoryRowCell.swift
//  UXCategoryRows
//
//  Created by Michael Nino Evensen on 21/10/2016.
//  Copyright © 2016 Michael Nino Evensen. All rights reserved.
//

import UIKit

class CategoryRowCell: UITableViewCell, UICollectionViewDataSource {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // CollectionView DataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryItemCell", for: indexPath)
        
        return cell
    }
}

/* Row sizing */
extension CategoryRowCell: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
//        let itemsPerRow:CGFloat = 4
        //        let hardCodedPadding:CGFloat = 5
        //        let itemWidth = (collectionView.bounds.width / itemsPerRow) - hardCodedPadding
        //        let itemHeight = collectionView.bounds.height - (2 * hardCodedPadding)
        //        return CGSize(width: itemWidth, height: itemHeight)
        
        return CGSize(width: 200, height: 200)
    }
}
