//
//  TweetTableViewCell.swift
//  Twitter
//
//  Created by CSUDH on 3/10/21.
//  Copyright © 2021 Dan. All rights reserved.
//

import UIKit

class TweetTableViewCell: UITableViewCell {

    
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var tweetContent: UILabel!
    
    @IBOutlet weak var retweetButton: UIButton!
    
    @IBOutlet weak var favButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var favorited: Bool = false
    
    @IBAction func retweet(_ sender: Any) {
        
        
        
    }
    
    
    func setFavorite(_ isFavorited: Bool)
    {
        
        favorited = isFavorited
        if (favorited)
        {
            
            favButton.setImage(UIImage(named: "favorite-icon-red"), for: UIControl.State.normal)
            
        }
        else
        {
            favButton.setImage(UIImage(named: "favorite-icon"), for: UIControl.State.normal)
        }
        
    }

    @IBAction func favoriteTweet(_ sender: Any) {
        
        
        
    }
    
    
}
