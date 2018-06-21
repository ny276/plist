//
//  MyTableViewController.swift
//  plist
//
//  Created by D7703_17 on 2018. 6. 21..
//  Copyright © 2018년 D7703_17. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

      var Title = ["동의과학대학교", "부산시민공원", "롯데호텔 부산본점"]
      var address = ["부산광역시 부산진구 양지로 54", "부산광역시 부산진구 연지동 100-6", "부산광역시 부사진구 부전동 부전로 503-15"]
      
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "기말 코딩 문제"
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return Title.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
            as! MyTableViewCell

      cell.myCellTitle.text = Title[indexPath.row]
      cell.myCellAddress.text = address[indexPath.row]

        return cell
    }
      
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detail" {
            if let indexPath =  tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! detailViewController
                        // 이름 넘기기
                destinationController.Title = Title[indexPath.row]
                        
                destinationController.address = address[indexPath.row]
            }
        } else if segue.identifier == "total" {
            let destinationController = segue.destination as! TotalMapViewController
            destinationController.Title = Title
            destinationController.address = address
      
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
}
