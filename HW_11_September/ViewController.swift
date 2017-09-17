//
//  ViewController.swift
//  HW_11_September
//
//  Created by itisioslab on 14.09.17.
//  Copyright © 2017 itisioslab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var avatarkaImage: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var surnameLable: UILabel!
    @IBOutlet weak var ageLable: UILabel!
    @IBOutlet weak var cityLable: UILabel!
    @IBOutlet weak var informationScrollView: UIScrollView!
    @IBOutlet weak var imageScrollView: UIScrollView!
    @IBOutlet weak var friendsButton: UIButton!
    @IBOutlet weak var followersButton: UIButton!
    @IBOutlet weak var groupsButton: UIButton!
    @IBOutlet weak var photosButton: UIButton!
    @IBOutlet weak var videosButton: UIButton!
    @IBOutlet weak var righBarButton: UIBarButtonItem!
    @IBOutlet weak var entryButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var geoButton: UIButton!
    @IBOutlet weak var titleItem: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeBackgroundNavigation()
        changeBorder(view: informationScrollView)
        changeBorder(view: entryButton)
        changeBorder(view: photoButton)
        changeBorder(view: geoButton)
        setupNavigationBarItems()
        randomUserInfo()
        randomScrollInfo()
        
    }
	
    func changeBackgroundNavigation() {
        let backgroundImage : UIImage = #imageLiteral(resourceName: "background-navigation-image")
        navigationController?.navigationBar.setBackgroundImage(backgroundImage, for: .default)
    }
    // round image function
    override func viewDidLayoutSubviews() {
        avatarkaImage.layer.cornerRadius = avatarkaImage.frame.size.width/2
        avatarkaImage.clipsToBounds = true
    }
    
    func changeBorder(view: UIView) {
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.init(red:222/255.0, green:225/255.0, blue:227/255.0, alpha: 1.0).cgColor
    }
    
    func setupNavigationBarItems() {
        let sidebarButton = UIButton(type: .system)
        sidebarButton.setImage(#imageLiteral(resourceName: "sidebar-image"), for: .normal)
        sidebarButton.frame = CGRect(x: 0, y: 0, width: 35, height: 35)
        sidebarButton.contentMode = .scaleAspectFit
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: sidebarButton)
        
        let pointsButton = UIButton(type: .system)
        pointsButton.setImage(#imageLiteral(resourceName: "points-image"), for: .normal)
        pointsButton.frame = CGRect(x: 0, y: 0, width: 35, height: 35)
        pointsButton.contentMode = .scaleAspectFit
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: pointsButton)
    }
    
    func randomUserInfo() {
        let user : UserRandom = UserRandom()
        user.createUser()
        title = user.name
        nameLable.text = user.name
        surnameLable.text = user.surname
        let stringAge = String (user.age)
        ageLable.text = stringAge + "   years"
        cityLable.text = user.city
    }
    
    func randomScrollInfo() {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = NSTextAlignment.center
        let color = UIColor.black
        let friends = NSAttributedString(string: "\(arc4random_uniform(100)) \nfriends",
            attributes: [NSForegroundColorAttributeName : color, NSParagraphStyleAttributeName:paragraphStyle])
        friendsButton.setAttributedTitle(friends, for: .normal)
        let followers = NSAttributedString(string: "\(arc4random_uniform(100)) \nfollowers",
            attributes: [NSForegroundColorAttributeName : color, NSParagraphStyleAttributeName:paragraphStyle ])
        followersButton.setAttributedTitle(followers, for: .normal)
        let groups = NSAttributedString(string: "\(arc4random_uniform(100)) \ngroups",
            attributes: [NSForegroundColorAttributeName : color, NSParagraphStyleAttributeName:paragraphStyle])
        groupsButton.setAttributedTitle(groups, for: .normal)
        let photos = NSAttributedString(string: "\(arc4random_uniform(100)) \nphotos",
            attributes: [NSForegroundColorAttributeName : color, NSParagraphStyleAttributeName:paragraphStyle])
        photosButton.setAttributedTitle(photos, for: .normal)
        let videos = NSAttributedString(string: "\(arc4random_uniform(100)) \nvideos",
            attributes: [NSForegroundColorAttributeName : color, NSParagraphStyleAttributeName:paragraphStyle])
        videosButton.setAttributedTitle(videos, for: .normal)
    }
}

