//
//  ViewController.swift
//  askmeany
//
//  Created by Paresh Prajapati on 23/05/19.
//  Copyright © 2019 Solutionanalysts. All rights reserved.
//

import UIKit
import SAPlugAVPlayer

class ViewController: UIViewController {

    @IBOutlet weak var vwVideo: ViewVideo!
    @IBOutlet weak var vwController: UIView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        vwVideo.configure(url: "https://www.radiantmediaplayer.com/media/bbb-360p.mp4", ControllView: vwController, loader: activityIndicator)
        vwVideo.saveVideoLocally = false
//        vwVideo.delegate = self
        vwVideo.currentVideoID = 1
        vwVideo.play()
        vwVideo.activityIndicator?.startAnimating()
        
    }
    
}

