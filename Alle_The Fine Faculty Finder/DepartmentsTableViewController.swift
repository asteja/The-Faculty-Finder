//
//  DepartmentsTableViewController.swift
//  Alle_The Fine Faculty Finder
//
//  Created by Alle,Sai Teja on 3/2/16.
//  Copyright © 2016 Alle,Sai Teja. All rights reserved.
//

import UIKit

class DepartmentsTableViewController: UITableViewController {
    
    
//    university is a University object,as a stored property (is an implicitly unwrapped optional)
    var university:University!
    
    
    
    
    
    
    
//IN viewdidLoad() function we will create an university object and call populate university and we assign the department title and call NSNotification center
   
    override func viewDidLoad() {
        super.viewDidLoad()
        university = University()
        university.populateUniversity()
    
        self.navigationItem.title = "Departments"
        NotificationCenter.default.addObserver(self, selector: #selector(DepartmentsTableViewController.reloadData(_:)), name: NSNotification.Name(rawValue: "Data Delivered"), object: nil)
                // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    
    //we assign number of section in this function
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    // we assign the  number of rows in each section with this fucntion
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if university.departments.count == 0 {
            return 0
        }else{
            return university.departments.count
        }
    }
    
    
    //This function will reloads the data of the table view
    func reloadData(_ myWishName:Notification) {
            tableView.reloadData()
    }
    
    //this fucntionw will assign the data to the each cell in the tableview
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
       
//        let cell = self.tableView.dequeueReusableCellWithIdentifier("department_cell")!
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "department_cell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = university.departments[indexPath.row].name
        return cell
    }
    
  

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

   
//     MARK: - Navigation
    //This method is used to prepare segue for the departments to faculty table view controller
//     In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//         Get the new view controller using segue.destinationViewController.
        if segue.identifier == "dept_fact_segue" {
        let facultySegueVC:FacultyTableViewController = (segue.destination) as! FacultyTableViewController
        let indexpath = self.tableView.indexPathForSelectedRow
//         Pass the selected object to the new view controller.
        facultySegueVC.department = university.departments[indexpath!.row]
        }
    }


}
