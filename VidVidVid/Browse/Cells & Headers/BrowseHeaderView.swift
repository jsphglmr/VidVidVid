//
//  BrowseHeaderView.swift
//  VidVidVid
//
//  Created by Joseph Gilmore on 11/7/22.
//

import UIKit
import AVFoundation
import AVKit

class BrowseHeaderView: UIView {
    
    //    private let snatchImageView: UIImageView = {
    //        let image = UIImageView()
    //        image.contentMode = .scaleAspectFill
    //        image.clipsToBounds = true
    //        image.image = UIImage(named: "snatch")
    //        return image
    //    }()
    //
    //init
    override init(frame: CGRect) {
        super.init(frame: frame)
        //        addSubview(snatchImageView)
        playVideo()
        addGradient()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        //        snatchImageView.frame = bounds
    }
    
    func addGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.black.cgColor,
            UIColor.clear.cgColor,
            UIColor.black.cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    func playVideo() {
        guard let path = Bundle.main.path(forResource: "cinema", ofType: "mp4") else {
            print("ERROR LOADING VID")
            return
        }
        
        let url = URL.init(fileURLWithPath: path)
        let player = AVPlayer(url: url)
        let playerLayer = AVPlayerLayer(player: player)
        
        playerLayer.videoGravity = .resizeAspectFill
        playerLayer.needsDisplayOnBoundsChange = true
        playerLayer.frame = bounds
        
        layer.masksToBounds = true
        layer.addSublayer(playerLayer)
        
        player.play()
        
        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: player.currentItem, queue: nil) { (_) in
            player.seek(to: CMTime.zero)
            player.play()
        }
    }
}
