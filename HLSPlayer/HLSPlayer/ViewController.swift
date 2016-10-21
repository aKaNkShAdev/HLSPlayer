//
//  ViewController.swift
//  HLSPlayer
//
//  Created by Akanksha Sharma on 22/10/16.
//  Copyright © 2016 akanksha. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {

    @IBOutlet weak var playerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let player : AVPlayer = AVPlayer(url: URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!)
        let playerLayer : AVPlayerLayer = AVPlayerLayer(player: player);
        playerLayer.frame = CGRect.init(x: 0, y: 0, width: self.view.frame.size.width, height: 189);
        player.externalPlaybackVideoGravity = AVLayerVideoGravityResizeAspect;
        self.playerView.translatesAutoresizingMaskIntoConstraints = false;
        self.playerView.layer.addSublayer(playerLayer);
        player.play();
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

