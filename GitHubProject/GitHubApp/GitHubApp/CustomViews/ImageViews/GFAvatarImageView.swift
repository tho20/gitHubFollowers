//
//  GFAvatarImageView.swift
//  GitHubApp
//
//  Created by Thomas Verdier on 7/10/20.
//  Copyright © 2020 Thomas Verdier. All rights reserved.
//

import UIKit

class GFAvatarImageView: UIImageView {
    
    let cache = NetworkManager.shared.cache
    let placeholderImage = Images.placeholder
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false        
    }
    
    
    func downloadImage(fromURL url: String) {
        NetworkManager.shared.downloadImage(for: url) { [weak self] (image) in
            guard let self = self else { return }
            DispatchQueue.main.async { self.image = image }
        }
    }
}
