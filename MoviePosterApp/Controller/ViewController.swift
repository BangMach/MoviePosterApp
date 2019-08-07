//
//  ViewController.swift
//  MoviePosterApp/Users/jasonmach/Library/Autosave Information/MoviePosterApp/MoviePosterApp/View
//
//  Created by Jason Mach on 8/6/19.
//  Copyright © 2019 Jason Mach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var runningTime: UILabel!
    @IBAction func btChange(_ sender: Any) {
        if movieTitle.text == "Avenger:Endgame" {
            movie=Movie.yourName
        } else {
            movie=Movie.avenger
        }
        movieTitle.text = movie.detail.title
        
        poster.image = UIImage(named: movie.detail.imageName)
        
        // that placeholder has a image
        // instatite it as an object
        runningTime.text = "Running Time: " + String (movie.detail.runningTime) + "mins"
        
    }
    //func loadMovie()
    //connections to model
    var movie=Movie.avenger
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // first time the screen become available in the app this method get called
        movieTitle.text = movie.detail.title
        
        poster.image = UIImage(named: movie.detail.imageName)
        
        // that placeholder has a image
        // instatite it as an object
        runningTime.text = "Running Time: " + String (movie.detail.runningTime) + "mins"
        // string concapulation or string encapsulation \(movie.detail.runningTime)
        // Do any additional setup after loading the view, typically from a nib.
    }


}

