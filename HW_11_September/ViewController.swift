//
//  ViewController.swift
//  HW_11_September
//
//  Created by itisioslab on 14.09.17.
//  Copyright © 2017 itisioslab. All rights reserved.
//

import UIKit

let backgroundImage: UIImage = #imageLiteral(resourceName: "background-navigation-image")
let sidebarImage: UIImage = #imageLiteral(resourceName: "sidebar-image")
let pointsImage: UIImage = #imageLiteral(resourceName: "points-image")
let borderWidth: CGFloat = 1
let borderColour = UIColor.init(red:222/255.0, green:225/255.0, blue:227/255.0, alpha: 1.0).cgColor
let buttonWidth = 35
let buttonHeight = 35
let years = "   years"
let randomFriends = arc4random_uniform(100)
let randomFollowers = arc4random_uniform(100)
let randomGroups = arc4random_uniform(100)
let randomPhotos = arc4random_uniform(100)
let randomVideos = arc4random_uniform(100)

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
        changeBorder(for: informationScrollView)
        changeBorder(for: entryButton)
        changeBorder(for: photoButton)
        changeBorder(for: geoButton)
        setupNavigationBarItems()
        randomUserInfo()
        randomScrollInfo()
    }
	
    func changeBackgroundNavigation() {
        navigationController?.navigationBar.setBackgroundImage(backgroundImage, for: .default)
    }
    
    // round image function
    override func viewDidLayoutSubviews() {
        avatarkaImage.layer.cornerRadius = avatarkaImage.frame.size.width/2
        avatarkaImage.clipsToBounds = true
    }
    
    func changeBorder(for view: UIView) {
        view.layer.borderWidth = borderWidth
        view.layer.borderColor = borderColour
    }
    
    func setupNavigationBarItems() {
        let sidebarButton = UIButton(type: .system)
        sidebarButton.setImage(sidebarImage, for: .normal)
        sidebarButton.frame = CGRect(x: 0, y: 0, width: buttonWidth, height: buttonHeight)
        sidebarButton.contentMode = .scaleAspectFit
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: sidebarButton)
        
        let pointsButton = UIButton(type: .system)
        pointsButton.setImage(pointsImage, for: .normal)
        pointsButton.frame = CGRect(x: 0, y: 0, width: buttonWidth, height: buttonHeight)
        pointsButton.contentMode = .scaleAspectFit
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: pointsButton)
    }
    
    func randomUserInfo() {
        let user: UserRandom = UserRandom()
        user.createUser()
        title = user.name
        nameLable.text = user.name
        surnameLable.text = user.surname
        let stringAge = String (user.age)
        ageLable.text = stringAge + years
        cityLable.text = user.city
    }
    
    func randomScrollInfo() {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = NSTextAlignment.center
        let color = UIColor.black
        let friends = NSAttributedString(string: "\(randomFriends) \nfriends",
            attributes: [NSForegroundColorAttributeName : color, NSParagraphStyleAttributeName:paragraphStyle])
        friendsButton.setAttributedTitle(friends, for: .normal)
        let followers = NSAttributedString(string: "\(randomFollowers) \nfollowers",
            attributes: [NSForegroundColorAttributeName : color, NSParagraphStyleAttributeName:paragraphStyle ])
        followersButton.setAttributedTitle(followers, for: .normal)
        let groups = NSAttributedString(string: "\(randomGroups) \ngroups",
            attributes: [NSForegroundColorAttributeName : color, NSParagraphStyleAttributeName:paragraphStyle])
        groupsButton.setAttributedTitle(groups, for: .normal)
        let photos = NSAttributedString(string: "\(randomPhotos) \nphotos",
            attributes: [NSForegroundColorAttributeName : color, NSParagraphStyleAttributeName:paragraphStyle])
        photosButton.setAttributedTitle(photos, for: .normal)
        let videos = NSAttributedString(string: "\(randomVideos) \nvideos",
            attributes: [NSForegroundColorAttributeName : color, NSParagraphStyleAttributeName:paragraphStyle])
        videosButton.setAttributedTitle(videos, for: .normal)
    }
}

