//
//  MyTableViewController.swift
//  SolarSystem
//
//  Created by Nobuyuki on 11/14/15.
//  Copyright (c) 2015 DeAnza. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    var SystemObject = ["Sun", "Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
    var SystemImages = ["image-sun", "image-mercury", "image-venus", "image-earth", "image-mars", "image-jupiter", "image-saturn", "image-uranus", "image-neptune"]
    
    // Changes made in from folder Git
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return SystemObject.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "SystemCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! MyTableViewCell
        
        // Configure the cell...
        cell.cellItemName?.text = SystemObject[indexPath.row]
        cell.cellImage?.image = UIImage(named: SystemImages[indexPath.row])
        
        // Animation below
        var rotationTransform : CATransform3D = CATransform3DIdentity;
        rotationTransform = CATransform3DTranslate(rotationTransform, 800, 0, 0)
        cell.cellImage?.layer.transform = rotationTransform
        
        // Animates
        UIView.animateWithDuration(2, animations: { cell.cellImage.layer.transform = CATransform3DIdentity })
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var selectedItem = SystemObject[indexPath.row]
        let msgAlert = UIAlertView(title: "System Object Selected", message: selectedItem, delegate: nil, cancelButtonTitle: "Ok")
        msgAlert.show()
        
        
        self.tableView.deselectRowAtIndexPath(indexPath, animated: false)
    }
    
    
    
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    
    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        SystemObject.removeAtIndex(indexPath.row)
        SystemImages.removeAtIndex(indexPath.row)
        
        self.tableView.reloadData()
    }
}


/*
// Override to support rearranging the table view.
override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

}
*/

/*
// Override to support conditional rearranging of the table view.
override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
// Return NO if you do not want the item to be re-orderable.
return true
}
*/

/*
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
// Get the new view controller using [segue destinationViewController].
// Pass the selected object to the new view controller.
}
*/

