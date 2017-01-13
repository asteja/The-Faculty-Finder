//
//  ViewController.swift
//  Alle_The Fine Faculty Finder
//
//  Created by Alle,Sai Teja on 3/2/16.
//  Copyright © 2016 Alle,Sai Teja. All rights reserved.
//

import UIKit

class ProfessorInfoViewController: UIViewController {
    
    var professor:Professor?
    
   
    @IBOutlet weak var officeLocationLBL: UILabel!
    
   
    @IBOutlet weak var officeHoursLBL: UILabel!
    
    
//    Declare a Professor stored property, professor
//    2. Declare two @IBOutlets, for the UILabels that will be used to display office and office hours
//    information.
//    3. Populate those UILabels with the appropriate information. Do so in viewWillAppear()
//    4. Also in ViewWillAppear(), populate the ProfessorInfoViewController’s UINavigationItem’s
//    title with the professor’s first and last name, with a space in between.
    
    
    override func viewWillAppear(_ animated: Bool) {
        officeLocationLBL.text = professor?.office
        officeHoursLBL.text = professor?.officeHours
        navigationItem.title = (professor?.firstName)! + " " + (professor?.lastName)!
    }
    
      
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

