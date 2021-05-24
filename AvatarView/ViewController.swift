//
//  ViewController.swift
//  AvatarView
//
//  Created by jjaychen on 2021/5/24.
//

import UIKit

class ViewController: UIViewController {
    private var avatarView: AvatarView!
    
    let avatarArray: [Avatar] = [
        Avatar(image: nil, initials: "俊杰"),
        Avatar(image: nil, initials: "陈俊杰"),
        Avatar(image: UIImage(named: "avatar"), initials: "陈俊杰"),
        Avatar(image: nil, initials: "JJAYCHEN"),
        Avatar(image: nil, initials: "WW"),
        Avatar(image: nil, initials: "吴"),
        Avatar(image: nil, initials: "苏"),
        Avatar(image: nil, initials: "M"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        avatarView = AvatarView()
        view.addSubview(avatarView)
        avatarView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            avatarView.widthAnchor.constraint(equalTo: avatarView.heightAnchor),
            avatarView.widthAnchor.constraint(equalToConstant: 60),
            avatarView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            avatarView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        
        DispatchQueue.main.async {
            self.replaceWithRandomAvatar()
        }
    }

    private func replaceWithRandomAvatar() {
        self.avatarView.configuration.avatar = self.avatarArray.randomElement()!
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.replaceWithRandomAvatar()
        }
    }
}

