//
//  Department.swift
//  The Fine Faculty Finder
//
//  Created by Michael Rogers on 2/21/16.
//  Copyright © 2016 Michael Rogers. All rights reserved.
//

import Foundation

class Department {
    
    var name:String
    var faculty:[Professor]
    var primaryBuilding:String
//    
//    init() {
//        self.name = ""
//        self.faculty = []
//        self.primaryBuilding = ""
//    }
    
    init(name:String, faculty:[Professor], primaryBuilding:String){
        self.name = name
        self.faculty = faculty
        self.primaryBuilding = primaryBuilding
    }

}