//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Juan José Castro on 4/2/15.
//  Copyright (c) 2015 Juan José Castro. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {

    var ap: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if var path = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3")
        {
            ap = AVAudioPlayer(contentsOfURL: NSURL.fileURLWithPath(path), error: nil)
            ap.enableRate = true
            
        }
        else {
            println("lol nope")
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pressSlowButton(sender: UIButton) {
        ap.stop()
        ap.rate = 2.0
        ap.play()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
