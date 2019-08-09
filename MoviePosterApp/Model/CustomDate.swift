//
//  CustomDate.swift
//  MoviePosterApp
//
//  Created by Jason Mach on 8/10/19.
//  Copyright © 2019 Jason Mach. All rights reserved.
//

import UIKit
struct CustomDate {
    
    private var date:Date?
    // compile time safety
    
    // don't want burden the user with hour and timezone -> we can set default value
    init(day:Int, month:Int,year:Int,hour:Int=0, minute:Int=0,timeZone:TimeZone  = .current){
        var dateComponents = DateComponents()
        dateComponents.year=year
        dateComponents.month=month
        dateComponents.day=day
        dateComponents.timeZone = timeZone
        dateComponents.hour=hour
        dateComponents.minute = minute
        
     
        let userCalendar = Calendar.current
        
        date=userCalendar.date(from: <#T##DateComponents#>)
    }
    func formatted(as format:String = "dd-MM-yyyy" )->String?{
        // I can't return the string if the date is wrong(nil) check the date
        guard let date = self.date else {return nil}// local variable date if self.date exist assign it to date
        let dateFormatter=DateFormatter();
        dateFormatter.date(from: format)
        return dateFormatter.string(from:date)
        // formatted string to represent that date
    }
    
    
}
struct Movies{
    private var title:String
    private var description:String
    private var leadActor:String
    private var genre:String
    
    //private(set) var importantDates:importantDates?
    
    init(title:String,description:String,leadActor:String,genre:String ) {
        self.title=title
         self.description=description
         self.leadActor=leadActor
         self.genre=genre
        
    }
    
}
