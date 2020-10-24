//
//  charityTableViewCell.swift
//  تبرعي
//
//  Created by bashayer Al qaoud on 10/16/20.
//

import UIKit

class charityTableViewCell: UITableViewCell {
    @IBOutlet weak var charityImgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }
    
    func configureCell(charity: charity){
        self.charityImgView.image = UIImage(named: charity.imgname)
        self.nameLabel.text = charity.name
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

