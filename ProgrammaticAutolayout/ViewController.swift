//
//  ViewController.swift
//  ProgrammaticAutolayout
//
//  Created by Ryan Glascock on 9/11/19.
//  Copyright © 2019 Ryan Glascock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    var imageView = UIImageView()
//
//    var leadingConstraint: NSLayoutConstraint?
//    var trailingConstraint: NSLayoutConstraint?
//    var topConstraint: NSLayoutConstraint?
//    var bottomConstraint: NSLayoutConstraint?
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.text = "This is the Auto Layout challenge"
        textView.font = UIFont.boldSystemFont(ofSize: 20)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        return textView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .lightGray
        
    
        // Do any additional setup after loading the view.
        
//        imageView.image = UIImage(named: "test.jpeg")
//        imageView.contentMode = .scaleAspectFit  // this tells the imageView how to display the image in it
//        imageView.clipsToBounds = true
//        view.addSubview(imageView)
//
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//
//        leadingConstraint = NSLayoutConstraint(item: imageView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 20.0)
//
//        trailingConstraint = NSLayoutConstraint(item: imageView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -20.0)
//
//        topConstraint = NSLayoutConstraint(item: imageView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 20.0)
//
//        bottomConstraint = NSLayoutConstraint(item: imageView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -20.0)
//
//        leadingConstraint?.isActive = true
//        trailingConstraint?.isActive = true
//        topConstraint?.isActive = true
//        bottomConstraint?.isActive = true
        view.addSubview(descriptionTextView)
        
        setupLayout()
        
    }

    private func setupLayout(){
        descriptionTextView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    

}

