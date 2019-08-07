//
//  Movie.swift
//  MoviePosterApp
//
//  Created by Jason Mach on 8/6/19.
//  Copyright © 2019 Jason Mach. All rights reserved.
//

import Foundation

enum Movie{
    case avenger,yourName
    var detail: (title:String,imageName:String,runningTime:Double)
    {
        switch self{
        case .avenger:
            return ("Avenger:Endgame","Avengers_Endgame_poster",143)
        case .yourName:
            return("Your Name","Poster_phim_Tên_bạn_là_gì",149)
        }
    }
}
